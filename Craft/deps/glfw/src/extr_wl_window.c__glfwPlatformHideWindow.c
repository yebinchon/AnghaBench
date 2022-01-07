
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int surface; } ;
struct TYPE_5__ {TYPE_1__ wl; } ;
typedef TYPE_2__ _GLFWwindow ;


 int wl_surface_attach (int ,int *,int ,int ) ;
 int wl_surface_commit (int ) ;

void _glfwPlatformHideWindow(_GLFWwindow* window)
{
    wl_surface_attach(window->wl.surface, ((void*)0), 0, 0);
    wl_surface_commit(window->wl.surface);
}
