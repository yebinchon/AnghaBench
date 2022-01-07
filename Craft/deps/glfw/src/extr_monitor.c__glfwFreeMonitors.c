
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWmonitor ;


 int _glfwFreeMonitor (int *) ;
 int free (int **) ;

void _glfwFreeMonitors(_GLFWmonitor** monitors, int count)
{
    int i;

    for (i = 0; i < count; i++)
        _glfwFreeMonitor(monitors[i]);

    free(monitors);
}
