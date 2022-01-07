
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ surface; int context; int config; } ;
struct TYPE_9__ {TYPE_2__ egl; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {int display; } ;
struct TYPE_10__ {TYPE_1__ egl; } ;
typedef int EGLNativeWindowType ;


 int EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_SURFACE ;
 int GLFW_PLATFORM_ERROR ;
 scalar_t__ _GLFW_EGL_NATIVE_WINDOW ;
 TYPE_6__ _glfw ;
 int _glfwInputError (int ,char*,int ) ;
 int _glfwSetContextTLS (TYPE_3__*) ;
 scalar_t__ _glfw_eglCreateWindowSurface (int ,int ,int ,int *) ;
 int _glfw_eglGetError () ;
 int _glfw_eglMakeCurrent (int ,scalar_t__,scalar_t__,int ) ;
 int getErrorString (int ) ;

void _glfwPlatformMakeContextCurrent(_GLFWwindow* window)
{
    if (window)
    {
        if (window->egl.surface == EGL_NO_SURFACE)
        {
            window->egl.surface =
                _glfw_eglCreateWindowSurface(_glfw.egl.display,
                                             window->egl.config,
                                             (EGLNativeWindowType)_GLFW_EGL_NATIVE_WINDOW,
                                             ((void*)0));
            if (window->egl.surface == EGL_NO_SURFACE)
            {
                _glfwInputError(GLFW_PLATFORM_ERROR,
                                "EGL: Failed to create window surface: %s",
                                getErrorString(_glfw_eglGetError()));
            }
        }

        _glfw_eglMakeCurrent(_glfw.egl.display,
                             window->egl.surface,
                             window->egl.surface,
                             window->egl.context);
    }
    else
    {
        _glfw_eglMakeCurrent(_glfw.egl.display,
                             EGL_NO_SURFACE,
                             EGL_NO_SURFACE,
                             EGL_NO_CONTEXT);
    }

    _glfwSetContextTLS(window);
}
