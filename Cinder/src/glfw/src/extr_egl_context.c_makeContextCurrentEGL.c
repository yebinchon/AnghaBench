
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int handle; int surface; } ;
struct TYPE_9__ {TYPE_1__ egl; } ;
struct TYPE_11__ {TYPE_2__ context; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_10__ {int display; } ;
struct TYPE_12__ {TYPE_3__ egl; } ;


 int EGL_NO_CONTEXT ;
 int EGL_NO_SURFACE ;
 int GLFW_PLATFORM_ERROR ;
 TYPE_7__ _glfw ;
 int _glfwInputError (int ,char*,int ) ;
 int _glfwPlatformSetCurrentContext (TYPE_4__*) ;
 int eglGetError () ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int getEGLErrorString (int ) ;

__attribute__((used)) static void makeContextCurrentEGL(_GLFWwindow* window)
{
    if (window)
    {
        if (!eglMakeCurrent(_glfw.egl.display,
                            window->context.egl.surface,
                            window->context.egl.surface,
                            window->context.egl.handle))
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "EGL: Failed to make context current: %s",
                            getEGLErrorString(eglGetError()));
            return;
        }
    }
    else
    {
        if (!eglMakeCurrent(_glfw.egl.display,
                            EGL_NO_SURFACE,
                            EGL_NO_SURFACE,
                            EGL_NO_CONTEXT))
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "EGL: Failed to clear current context: %s",
                            getEGLErrorString(eglGetError()));
            return;
        }
    }

    _glfwPlatformSetCurrentContext(window);
}
