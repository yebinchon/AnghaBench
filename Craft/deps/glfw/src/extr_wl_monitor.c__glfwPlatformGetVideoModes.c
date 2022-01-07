
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int modesCount; TYPE_1__* modes; } ;
struct TYPE_7__ {TYPE_2__ wl; } ;
typedef TYPE_3__ _GLFWmonitor ;
struct TYPE_5__ {int base; } ;
typedef int GLFWvidmode ;


 int * calloc (int,int) ;

GLFWvidmode* _glfwPlatformGetVideoModes(_GLFWmonitor* monitor, int* found)
{
    GLFWvidmode *modes;
    int i, modesCount = monitor->wl.modesCount;

    modes = calloc(modesCount, sizeof(GLFWvidmode));

    for (i = 0; i < modesCount; i++)
        modes[i] = monitor->wl.modes[i].base;

    *found = modesCount;
    return modes;
}
