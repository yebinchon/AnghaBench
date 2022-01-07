
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int scale; int width; int height; int native; } ;
struct TYPE_7__ {TYPE_1__ wl; } ;
typedef TYPE_2__ _GLFWwindow ;


 int _glfwInputFramebufferSize (TYPE_2__*,int,int) ;
 int setOpaqueRegion (TYPE_2__*) ;
 int wl_egl_window_resize (int ,int,int,int ,int ) ;

void _glfwPlatformSetWindowSize(_GLFWwindow* window, int width, int height)
{
    int scaledWidth = width * window->wl.scale;
    int scaledHeight = height * window->wl.scale;
    window->wl.width = width;
    window->wl.height = height;
    wl_egl_window_resize(window->wl.native, scaledWidth, scaledHeight, 0, 0);
    setOpaqueRegion(window);
    _glfwInputFramebufferSize(window, scaledWidth, scaledHeight);
}
