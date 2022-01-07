
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLboolean ;
typedef int GLFWwindow ;
typedef int GLFWmonitor ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_AUTO_ICONIFY ;
 int GLFW_FOCUSED ;
 int GLFW_ICONIFIED ;
 scalar_t__ GL_FALSE ;
 scalar_t__ GL_TRUE ;
 int ** calloc (int,int) ;
 int * create_window (int *) ;
 int error_callback ;
 int exit (int ) ;
 int fflush (int ) ;
 int framebuffer_size_callback ;
 int getopt (int,char**,char*) ;
 int ** glfwGetMonitors (int*) ;
 int * glfwGetPrimaryMonitor () ;
 scalar_t__ glfwGetWindowAttrib (int *,int ) ;
 int glfwInit () ;
 int glfwPollEvents () ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetFramebufferSizeCallback (int *,int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSetWindowFocusCallback (int *,int ) ;
 int glfwSetWindowIconifyCallback (int *,int ) ;
 int glfwSetWindowRefreshCallback (int *,int (*) (int *)) ;
 int glfwSetWindowSizeCallback (int *,int ) ;
 int glfwTerminate () ;
 int glfwWindowHint (int ,scalar_t__) ;
 scalar_t__ glfwWindowShouldClose (int *) ;
 int key_callback ;
 int printf (char*,char*,char*) ;
 int stdout ;
 int usage () ;
 int window_focus_callback ;
 int window_iconify_callback ;
 int window_refresh_callback (int *) ;
 int window_size_callback ;

int main(int argc, char** argv)
{
    int ch, i, window_count;
    GLboolean auto_iconify = GL_TRUE, fullscreen = GL_FALSE, all_monitors = GL_FALSE;
    GLFWwindow** windows;

    while ((ch = getopt(argc, argv, "afhn")) != -1)
    {
        switch (ch)
        {
            case 'a':
                all_monitors = GL_TRUE;
                break;

            case 'h':
                usage();
                exit(EXIT_SUCCESS);

            case 'f':
                fullscreen = GL_TRUE;
                break;

            case 'n':
                auto_iconify = GL_FALSE;
                break;

            default:
                usage();
                exit(EXIT_FAILURE);
        }
    }

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    glfwWindowHint(GLFW_AUTO_ICONIFY, auto_iconify);

    if (fullscreen && all_monitors)
    {
        int monitor_count;
        GLFWmonitor** monitors = glfwGetMonitors(&monitor_count);

        window_count = monitor_count;
        windows = calloc(window_count, sizeof(GLFWwindow*));

        for (i = 0; i < monitor_count; i++)
        {
            windows[i] = create_window(monitors[i]);
            if (!windows[i])
                break;
        }
    }
    else
    {
        GLFWmonitor* monitor = ((void*)0);

        if (fullscreen)
            monitor = glfwGetPrimaryMonitor();

        window_count = 1;
        windows = calloc(window_count, sizeof(GLFWwindow*));
        windows[0] = create_window(monitor);
    }

    for (i = 0; i < window_count; i++)
    {
        glfwSetKeyCallback(windows[i], key_callback);
        glfwSetFramebufferSizeCallback(windows[i], framebuffer_size_callback);
        glfwSetWindowSizeCallback(windows[i], window_size_callback);
        glfwSetWindowFocusCallback(windows[i], window_focus_callback);
        glfwSetWindowIconifyCallback(windows[i], window_iconify_callback);
        glfwSetWindowRefreshCallback(windows[i], window_refresh_callback);

        window_refresh_callback(windows[i]);

        printf("Window is %s and %s\n",
            glfwGetWindowAttrib(windows[i], GLFW_ICONIFIED) ? "iconified" : "restored",
            glfwGetWindowAttrib(windows[i], GLFW_FOCUSED) ? "focused" : "defocused");
    }

    for (;;)
    {
        glfwPollEvents();

        for (i = 0; i < window_count; i++)
        {
            if (glfwWindowShouldClose(windows[i]))
                break;
        }

        if (i < window_count)
            break;


        fflush(stdout);
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
