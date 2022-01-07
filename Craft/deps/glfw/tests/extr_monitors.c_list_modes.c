
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float width; } ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 char* format_mode (TYPE_1__ const*) ;
 char* glfwGetMonitorName (int *) ;
 int glfwGetMonitorPhysicalSize (int *,int*,int*) ;
 int glfwGetMonitorPos (int *,int*,int*) ;
 int * glfwGetPrimaryMonitor () ;
 TYPE_1__* glfwGetVideoMode (int *) ;
 TYPE_1__* glfwGetVideoModes (int *,int*) ;
 scalar_t__ memcmp (TYPE_1__ const*,TYPE_1__ const*,int) ;
 int printf (char*,...) ;
 int putchar (char) ;

__attribute__((used)) static void list_modes(GLFWmonitor* monitor)
{
    int count, x, y, widthMM, heightMM, i;
    const GLFWvidmode* mode = glfwGetVideoMode(monitor);
    const GLFWvidmode* modes = glfwGetVideoModes(monitor, &count);

    glfwGetMonitorPos(monitor, &x, &y);
    glfwGetMonitorPhysicalSize(monitor, &widthMM, &heightMM);

    printf("Name: %s (%s)\n",
           glfwGetMonitorName(monitor),
           glfwGetPrimaryMonitor() == monitor ? "primary" : "secondary");
    printf("Current mode: %s\n", format_mode(mode));
    printf("Virtual position: %i %i\n", x, y);

    printf("Physical size: %i x %i mm (%0.2f dpi)\n",
           widthMM, heightMM, mode->width * 25.4f / widthMM);

    printf("Modes:\n");

    for (i = 0; i < count; i++)
    {
        printf("%3u: %s", (unsigned int) i, format_mode(modes + i));

        if (memcmp(mode, modes + i, sizeof(GLFWvidmode)) == 0)
            printf(" (current mode)");

        putchar('\n');
    }
}
