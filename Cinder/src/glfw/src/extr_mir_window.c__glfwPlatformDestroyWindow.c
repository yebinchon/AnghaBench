
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* destroy ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int * surface; } ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ mir; } ;
typedef TYPE_3__ _GLFWwindow ;


 scalar_t__ mir_surface_is_valid (int *) ;
 int mir_surface_release_sync (int *) ;
 int stub1 (TYPE_3__*) ;

void _glfwPlatformDestroyWindow(_GLFWwindow* window)
{
    if (mir_surface_is_valid(window->mir.surface))
    {
        mir_surface_release_sync(window->mir.surface);
        window->mir.surface = ((void*)0);
    }

    if (window->context.destroy)
        window->context.destroy(window);
}
