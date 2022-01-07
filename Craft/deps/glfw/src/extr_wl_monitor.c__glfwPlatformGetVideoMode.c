
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
struct TYPE_5__ {int flags; int base; } ;
typedef int GLFWvidmode ;


 int WL_OUTPUT_MODE_CURRENT ;

void _glfwPlatformGetVideoMode(_GLFWmonitor* monitor, GLFWvidmode* mode)
{
    int i;

    for (i = 0; i < monitor->wl.modesCount; i++)
    {
        if (monitor->wl.modes[i].flags & WL_OUTPUT_MODE_CURRENT)
        {
            *mode = monitor->wl.modes[i].base;
            return;
        }
    }
}
