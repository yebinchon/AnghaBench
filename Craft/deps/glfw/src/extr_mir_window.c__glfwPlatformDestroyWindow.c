
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * surface; } ;
struct TYPE_6__ {TYPE_1__ mir; } ;
typedef TYPE_2__ _GLFWwindow ;


 int _glfwDestroyContext (TYPE_2__*) ;
 scalar_t__ mir_surface_is_valid (int *) ;
 int mir_surface_release_sync (int *) ;

void _glfwPlatformDestroyWindow(_GLFWwindow* window)
{
    if (mir_surface_is_valid(window->mir.surface))
    {
        mir_surface_release_sync(window->mir.surface);
        window->mir.surface = ((void*)0);
    }

    _glfwDestroyContext(window);
}
