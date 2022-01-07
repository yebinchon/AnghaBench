
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int surface; } ;
struct TYPE_5__ {TYPE_1__ mir; } ;
typedef TYPE_2__ _GLFWwindow ;


 int mir_surface_set_state (int ,int ) ;
 int mir_surface_state_minimized ;

void _glfwPlatformIconifyWindow(_GLFWwindow* window)
{
    mir_surface_set_state(window->mir.surface, mir_surface_state_minimized);
}
