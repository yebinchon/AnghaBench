
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int surface; } ;
struct TYPE_5__ {TYPE_1__ mir; } ;
typedef TYPE_2__ _GLFWwindow ;


 scalar_t__ mir_surface_get_visibility (int ) ;
 scalar_t__ mir_surface_visibility_exposed ;

int _glfwPlatformWindowVisible(_GLFWwindow* window)
{
    return mir_surface_get_visibility(window->mir.surface) == mir_surface_visibility_exposed;
}
