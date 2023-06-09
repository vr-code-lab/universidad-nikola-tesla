<%@page import="beans.MateriaDTO"%>
<%@page import="beans.AdministradorDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nikola Tesla - Registrar Profesor</title>

	<link rel="icon" href="img/rayo.png">
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

</head>
<body>
	
	<!-- Navegacion_Superior -->
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- LogoDeLaPagina -->
		<a class="navbar-brand text-center fw-bold" href="index.jsp"> 
			NIKOLA TESLA
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lightning-fill" viewBox="0 0 16 16">
  			<path d="M5.52.359A.5.5 0 0 1 6 0h4a.5.5 0 0 1 .474.658L8.694 6H12.5a.5.5 0 0 1 .395.807l-7 9a.5.5 0 0 1-.873-.454L6.823 9.5H3.5a.5.5 0 0 1-.48-.641l2.5-8.5z"/>
			</svg>
		</a>
		
		<!-- BtnMenu-->
		<button class="btn btn-link btn-xl order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		
		<!-- Barra de navegacion de busqueda-->
		<form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Busqueda..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
				<button class="btn btn-secondary" id="btnNavbarSearch" type="button"> 
					<i class="fas fa-search"></i>
				</button>
			</div>
		</form>
		
		<!-- UsuarioLogueado-->
		<div class="m-1"> 
			 <a class="text-decoration-none text-white">Bienvenido: </a>
			 
			 <a class="text-decoration-none text-white">
			 	<label> Andr�s </label>
			 	<label> Fuster Arregui</label>
			 </a>
		</div>
		
		<!-- OpcionesDelUsuario-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li>
						<a class="dropdown-item" href="#">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  								<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
							</svg>
						Administrador 
						</a>
					</li>
					<li><hr class="dropdown-divider"/></li>
					<li class="">
						<a class="dropdown-item" href="login.jsp">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
  								<path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
  								<path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
							</svg>
						Cerrar Sesion 
						</a>
					</li>
				</ul></li>
		</ul>
	</nav>

	<div id="layoutSidenav">
		<!-- Navegacion_Vertical -->

            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                        	<!-- tituloBienvenido -->
                            <div class="sb-sidenav-menu-heading">Bienvenido</div>
                            
                        	<!-- inicioMenuVertical -->                            
                            <a class="nav-link" href="index.jsp">
                                <div class="sb-nav-link-icon">
                                	<svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-microsoft" viewBox="0 0 18 18">
  									<path d="M7.462 0H0v7.19h7.462V0zM16 0H8.538v7.19H16V0zM7.462 8.211H0V16h7.462V8.211zm8.538 0H8.538V16H16V8.211z"/>
									</svg>
                                </div>
                                Inicio
                            </a>
                            
                        	<!-- tituloMantenimiento -->
                            <div class="sb-sidenav-menu-heading">Mantenimiento</div>
                            
                        	<!-- listadosMenuVertical -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                	Listados
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            
                        	<!-- listadosSubMenuVertical -->
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="ServletAdministrador?tipo=listar">Administradores</a>
                                    <a class="nav-link" href="ServletEstudiante?tipo=listar">Estudiantes</a>
                                    <a class="nav-link" href="ServletProfesor?tipo=listar">Profesores</a>
                                    <a class="nav-link" href="ServletCarrera?tipo=listar">Carreras</a>
                                    <a class="nav-link" href="ServletMateria?tipo=listar">Materias</a>
                                    <a class="nav-link" href="ServletMatricula?tipo=listar">Matriculas</a>
                                    <a class="nav-link" href="ServletContrato?tipo=listar">Contratos</a>
                                </nav>
                            </div>
                            
                        	<!-- agregarMenuVertical -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                	Agregar
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            
                        	<!-- agregarSubMenuVertical -->
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                	<a class="nav-link" href="registrarAdministrador.jsp">Administrador</a>
                                	<a class="nav-link" href="registrarEstudiante.jsp">Estudiante</a>
                                	<a class="nav-link" href="registrarProfesor.jsp">Profesor</a>
                                	<a class="nav-link" href="registrarCarrera.jsp">Carrera</a>
                                	<a class="nav-link" href="registrarMateria.jsp">Materia</a>
                                	<a class="nav-link" href="registrarMatricula.jsp">Matricula</a>
                                	<a class="nav-link" href="registrarContrato.jsp">Contrato</a>
                                </nav>
                            </div>
                            
                        	<!-- tituloMantenimiento -->
                            <div class="sb-sidenav-menu-heading">Reportes</div>
                            
                        	<!-- listadosMenuVertical -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayoutsReportes" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                	Reporte
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            
                        	<!-- listadosSubMenuVertical -->
                            <div class="collapse" id="collapseLayoutsReportes" aria-labelledby="headingThree" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="ServletReporte?tipo=administrador" target="_blank">Administradores</a>
                                    <a class="nav-link" href="ServletReporte?tipo=estudiante" target="_blank">Estudiantes</a>
                                    <a class="nav-link" href="ServletReporte?tipo=profesor" target="_blank">Profesores</a>
                                    <a class="nav-link" href="ServletReporte?tipo=carrera" target="_blank">Carreras</a>
                                    <a class="nav-link" href="ServletReporte?tipo=materia" target="_blank">Materias</a>
                                    <a class="nav-link" href="ServletReporte?tipo=matricula" target="_blank">Matricula</a>
                                    <a class="nav-link" href="ServletReporte?tipo=contrato" target="_blank">Contrato</a>
                                </nav>
                            </div>
                            
                        	<!-- matriculaSubMenuVertical -->                                       
                            <div class="sb-sidenav-menu-heading">Matricula</div>
                            
                        	<!-- matriculaAlumno -->                                                                   
                            <a class="nav-link" href="registrarEstudiante.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Nuevo Estudiante
                            </a>
                            
                        </div>
                    </div>
                    
                    <div class="sb-sidenav-footer mx-2 my-2"  style="padding-top: 0.87rem;">

					<div class="small">Copyright � Universidad Nikola Tesla 2022</div>

				</div>
                    
                </nav>
            </div>
            
            <!-- Contenido_De_Menu -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-0">
                        <div class="card my-2 mx-2" style="background-color: #232323;">

            			<!-- formularioRegistroMateria -->
						<div class="container mb-5">
							<h3 class="text-center mt-3 text-white font-opensans">REGISTRO DE PROFESOR</h3>
							<div style="width: 10rem; background-color:rgb(159, 121, 68); height:0.25rem; margin: auto;"></div>
							<div class="row justify-content-center">

								<form action="ServletProfesor" method="post" class="col-10 col-sm-8 col-md-6 col-xl-5 bg-light p-4 border border-1 rounded shadow mt-4 font-opensans">
									<div class="mb-4 row">
										<label for="txtNom" class="col-sm-4 col-form-label mb-2">Nombres:</label>
										<div class="col-sm-8">
											<input type="text" pattern="^[A-Za-z�-��-��-��-� ]{2,20}$"
												title="El nombre debe ser de 2 a 20 letras"
												class="form-control" id="txtNom" name="txtNom" required>
										</div>
										
										<label for="txtApe" class="col-sm-4 col-form-label mb-2">Apellidos:</label>
										<div class="col-sm-8">
											<input type="text" pattern="^[A-Za-z�-��-��-��-� ]{2,20}$"
												title="El nombre debe ser de 2 a 20 letras"
												class="form-control" id="txtApe" name="txtApe" required>
										</div>
										
										<label for="txtDni" class="col-sm-4 col-form-label mb-2">DNI:</label>
										<div class="col-sm-8">
											<input type="text" pattern="[0-9]{8}" maxlength="8" title="Ingrese formato de 8 digitos numericos"
												class="form-control" id="txtDni" name="txtDni" required>
										</div>
										
										<label for="txtGen" class="col-sm-4 col-form-label mb-2">Genero:</label>
										<div class="col-sm-8">
											<input type="text"
												class="form-control" id="txtGen" name="txtGen" required>
										</div>
										
										<label for="txtFec" class="col-sm-4 col-form-label mb-2">F. Nacimiento:</label>
										<div class="col-sm-8">
											<input type="date" pattern="" title=""
												class="form-control" id="txtFec" name="txtFec" required>
										</div>
										
										<label for="txtEma" class="col-sm-4 col-form-label mb-2">E-mail:</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" id="txtEma" name="txtEma" >
										</div>
										
										<label for="txtTel" class="col-sm-4 col-form-label mb-2">Telefono:</label>
										<div class="col-sm-8">
											<input type="text" maxlength="9" title="Ingrese formato de 10 digitos numericos"
												class="form-control" id="txtTel" name="txtTel" required>
										</div>
										
										<label for="txtDir" class="col-sm-4 col-form-label mb-2">Direccion:</label>
										<div class="col-sm-8">
											<input type="text"
												class="form-control" id="txtDir" name="txtDir" required>
										</div>
														
									</div>
									<div class="text-center">
										<button class="btn btn-primary me-4" name="tipo" value="registrar">
											<i class="bi bi-person-plus"></i>Registrar
										</button>
										<a class="btn btn-success" href="ServletProfesor?tipo=listar">
										<i class="bi bi-arrow-return-left"></i>Regresar</a>
									</div>
								</form>

							</div>
						</div>

					</div>
                    </div>
                </main>
                
   				<!-- Pie_De_Pagina -->             
                <footer class="py-4 bg-dark mt-auto mt-auto my-2 mx-2 bg-radius">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Todos Los Derechos Reservados - Universidad Nikola Tesla 2022</div>
                            <div>
                                <a class="m-4 text-decoration-none" href="#">Politica de privacidad</a>
                               
                                <a class="text-decoration-none" href="#">Terminos y Condiciones</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>    
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="js/datatables-simple-demo.js"></script>
    
    <!-- 
    <script src="js/chart-area-demo.js"></script>
    <script src="js/chart-bar-demo.js"></script>
     -->   
     
</body>
</html>