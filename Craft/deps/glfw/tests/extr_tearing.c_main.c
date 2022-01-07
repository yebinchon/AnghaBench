
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int refreshRate; int blueBits; int greenBits; int redBits; } ;
typedef scalar_t__ GLboolean ;
typedef int GLFWwindow ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_BLUE_BITS ;
 int GLFW_GREEN_BITS ;
 int GLFW_RED_BITS ;
 int GLFW_REFRESH_RATE ;
 int GL_COLOR_BUFFER_BIT ;
 scalar_t__ GL_FALSE ;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 scalar_t__ GL_TRUE ;
 float cosf (float) ;
 int error_callback ;
 int exit (int ) ;
 double frame_rate ;
 int framebuffer_size_callback ;
 int getopt (int,char**,char*) ;
 int glClear (int ) ;
 int glMatrixMode (int ) ;
 int glOrtho (float,float,float,float,float,float) ;
 int glRectf (float,float,float,float) ;
 int * glfwCreateWindow (int,int,char*,int *,int *) ;
 scalar_t__ glfwExtensionSupported (char*) ;
 int * glfwGetPrimaryMonitor () ;
 double glfwGetTime () ;
 TYPE_1__* glfwGetVideoMode (int *) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwPollEvents () ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetFramebufferSizeCallback (int *,int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSwapBuffers (int *) ;
 int glfwTerminate () ;
 int glfwWindowHint (int ,int ) ;
 int glfwWindowShouldClose (int *) ;
 int key_callback ;
 int set_swap_interval (int *,int ) ;
 int swap_tear ;
 int update_window_title (int *) ;
 int usage () ;

int main(int argc, char** argv)
{
    int ch, width, height;
    float position;
    unsigned long frame_count = 0;
    double last_time, current_time;
    GLboolean fullscreen = GL_FALSE;
    GLFWmonitor* monitor = ((void*)0);
    GLFWwindow* window;

    while ((ch = getopt(argc, argv, "fh")) != -1)
    {
        switch (ch)
        {
            case 'h':
                usage();
                exit(EXIT_SUCCESS);

            case 'f':
                fullscreen = GL_TRUE;
                break;
        }
    }

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    if (fullscreen)
    {
        const GLFWvidmode* mode;

        monitor = glfwGetPrimaryMonitor();
        mode = glfwGetVideoMode(monitor);

        glfwWindowHint(GLFW_RED_BITS, mode->redBits);
        glfwWindowHint(GLFW_GREEN_BITS, mode->greenBits);
        glfwWindowHint(GLFW_BLUE_BITS, mode->blueBits);
        glfwWindowHint(GLFW_REFRESH_RATE, mode->refreshRate);

        width = mode->width;
        height = mode->height;
    }
    else
    {
        width = 640;
        height = 480;
    }

    window = glfwCreateWindow(width, height, "", monitor, ((void*)0));
    if (!window)
    {
        glfwTerminate();
        exit(EXIT_FAILURE);
    }

    glfwMakeContextCurrent(window);
    set_swap_interval(window, 0);

    last_time = glfwGetTime();
    frame_rate = 0.0;
    swap_tear = (glfwExtensionSupported("WGL_EXT_swap_control_tear") ||
                 glfwExtensionSupported("GLX_EXT_swap_control_tear"));

    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetKeyCallback(window, key_callback);

    glMatrixMode(GL_PROJECTION);
    glOrtho(-1.f, 1.f, -1.f, 1.f, 1.f, -1.f);
    glMatrixMode(GL_MODELVIEW);

    while (!glfwWindowShouldClose(window))
    {
        glClear(GL_COLOR_BUFFER_BIT);

        position = cosf((float) glfwGetTime() * 4.f) * 0.75f;
        glRectf(position - 0.25f, -1.f, position + 0.25f, 1.f);

        glfwSwapBuffers(window);
        glfwPollEvents();

        frame_count++;

        current_time = glfwGetTime();
        if (current_time - last_time > 1.0)
        {
            frame_rate = frame_count / (current_time - last_time);
            frame_count = 0;
            last_time = current_time;
            update_window_title(window);
        }
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
