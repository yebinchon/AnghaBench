
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; int native; } ;
struct TYPE_5__ {TYPE_1__ wl; } ;
typedef TYPE_2__ _GLFWwindow ;


 int wl_egl_window_resize (int ,int,int,int ,int ) ;

void _glfwPlatformSetWindowSize(_GLFWwindow* window, int width, int height)
{
    wl_egl_window_resize(window->wl.native, width, height, 0, 0);
    window->wl.width = width;
    window->wl.height = height;
}
