
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ display; scalar_t__ registry; scalar_t__ cursorSurface; scalar_t__ cursorTheme; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;


 TYPE_2__ _glfw ;
 int _glfwTerminateEGL () ;
 int _glfwTerminateJoysticksLinux () ;
 int _glfwTerminateThreadLocalStoragePOSIX () ;
 int wl_cursor_theme_destroy (scalar_t__) ;
 int wl_display_disconnect (scalar_t__) ;
 int wl_display_flush (scalar_t__) ;
 int wl_registry_destroy (scalar_t__) ;
 int wl_surface_destroy (scalar_t__) ;

void _glfwPlatformTerminate(void)
{
    _glfwTerminateEGL();
    _glfwTerminateJoysticksLinux();
    _glfwTerminateThreadLocalStoragePOSIX();

    if (_glfw.wl.cursorTheme)
        wl_cursor_theme_destroy(_glfw.wl.cursorTheme);
    if (_glfw.wl.cursorSurface)
        wl_surface_destroy(_glfw.wl.cursorSurface);
    if (_glfw.wl.registry)
        wl_registry_destroy(_glfw.wl.registry);
    if (_glfw.wl.display)
        wl_display_flush(_glfw.wl.display);
    if (_glfw.wl.display)
        wl_display_disconnect(_glfw.wl.display);
}
