
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 double MAX_DELTA_T ;
 int adjust_grid () ;
 int calc_grid () ;
 int cursor_position_callback ;
 int draw_scene (int *) ;
 double dt ;
 int error_callback ;
 int exit (int ) ;
 int framebuffer_size_callback (int *,int,int) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 int glfwGetFramebufferSize (int *,int*,int*) ;
 double glfwGetTime () ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwPollEvents () ;
 int glfwSetCursorPosCallback (int *,int ) ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetFramebufferSizeCallback (int *,int (*) (int *,int,int)) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSetMouseButtonCallback (int *,int ) ;
 int glfwSetScrollCallback (int *,int ) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWindowShouldClose (int *) ;
 int init_grid () ;
 int init_opengl () ;
 int init_vertices () ;
 int key_callback ;
 int mouse_button_callback ;
 int scroll_callback ;

int main(int argc, char* argv[])
{
    GLFWwindow* window;
    double t, dt_total, t_old;
    int width, height;

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    window = glfwCreateWindow(640, 480, "Wave Simulation", ((void*)0), ((void*)0));
    if (!window)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glfwSetKeyCallback(window, key_callback);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetMouseButtonCallback(window, mouse_button_callback);
    glfwSetCursorPosCallback(window, cursor_position_callback);
    glfwSetScrollCallback(window, scroll_callback);

    glfwMakeContextCurrent(window);
    glfwSwapInterval(1);

    glfwGetFramebufferSize(window, &width, &height);
    framebuffer_size_callback(window, width, height);


    init_opengl();


    init_vertices();
    init_grid();
    adjust_grid();


    t_old = glfwGetTime() - 0.01;

    while (!glfwWindowShouldClose(window))
    {
        t = glfwGetTime();
        dt_total = t - t_old;
        t_old = t;


        while (dt_total > 0.f)
        {

            dt = dt_total > MAX_DELTA_T ? MAX_DELTA_T : dt_total;
            dt_total -= dt;


            calc_grid();
        }


        adjust_grid();


        draw_scene(window);

        glfwPollEvents();
    }

    exit(EXIT_SUCCESS);
}
