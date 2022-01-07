
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWmonitor ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LIST_MODE ;
 int TEST_MODE ;
 int error_callback ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int ** glfwGetMonitors (int*) ;
 int glfwInit () ;
 int glfwSetErrorCallback (int ) ;
 int glfwTerminate () ;
 int list_modes (int *) ;
 int test_modes (int *) ;
 int usage () ;

int main(int argc, char** argv)
{
    int ch, i, count, mode = LIST_MODE;
    GLFWmonitor** monitors;

    while ((ch = getopt(argc, argv, "th")) != -1)
    {
        switch (ch)
        {
            case 'h':
                usage();
                exit(EXIT_SUCCESS);
            case 't':
                mode = TEST_MODE;
                break;
            default:
                usage();
                exit(EXIT_FAILURE);
        }
    }

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    monitors = glfwGetMonitors(&count);

    for (i = 0; i < count; i++)
    {
        if (mode == LIST_MODE)
            list_modes(monitors[i]);
        else if (mode == TEST_MODE)
            test_modes(monitors[i]);
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
