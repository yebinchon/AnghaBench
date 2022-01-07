
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_2__ _GLFWwndconfig ;
struct TYPE_13__ {scalar_t__ width; scalar_t__ height; int surface; int window; } ;
struct TYPE_15__ {TYPE_1__ mir; scalar_t__ monitor; } ;
typedef TYPE_3__ _GLFWwindow ;
typedef int _GLFWfbconfig ;
struct TYPE_16__ {scalar_t__ client; } ;
typedef TYPE_4__ _GLFWctxconfig ;
struct TYPE_17__ {scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_5__ GLFWvidmode ;


 int GLFW_FALSE ;
 scalar_t__ GLFW_NO_API ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 int _glfwCreateContextEGL (TYPE_3__*,TYPE_4__ const*,int const*) ;
 int _glfwInitEGL () ;
 int _glfwInputError (int ,char*,scalar_t__,scalar_t__) ;
 int _glfwPlatformGetVideoMode (scalar_t__,TYPE_5__*) ;
 int createSurface (TYPE_3__*) ;
 int mir_buffer_stream_get_egl_native_window (int ) ;
 int mir_surface_get_buffer_stream (int ) ;
 int mir_surface_set_state (int ,int ) ;
 int mir_surface_state_fullscreen ;

int _glfwPlatformCreateWindow(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    if (window->monitor)
    {
        GLFWvidmode mode;
        _glfwPlatformGetVideoMode(window->monitor, &mode);

        mir_surface_set_state(window->mir.surface, mir_surface_state_fullscreen);

        if (wndconfig->width > mode.width || wndconfig->height > mode.height)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "Mir: Requested surface size too large: %ix%i",
                            wndconfig->width, wndconfig->height);

            return GLFW_FALSE;
        }
    }

    window->mir.width = wndconfig->width;
    window->mir.height = wndconfig->height;

    if (!createSurface(window))
        return GLFW_FALSE;

    window->mir.window = mir_buffer_stream_get_egl_native_window(
                                   mir_surface_get_buffer_stream(window->mir.surface));

    if (ctxconfig->client != GLFW_NO_API)
    {
        if (!_glfwInitEGL())
            return GLFW_FALSE;
        if (!_glfwCreateContextEGL(window, ctxconfig, fbconfig))
            return GLFW_FALSE;
    }

    return GLFW_TRUE;
}
