
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int surface; } ;
struct TYPE_10__ {TYPE_2__ egl; } ;
struct TYPE_11__ {TYPE_3__ context; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_8__ {int display; } ;
struct TYPE_12__ {TYPE_1__ egl; } ;


 int GLFW_PLATFORM_ERROR ;
 TYPE_7__ _glfw ;
 int _glfwInputError (int ,char*) ;
 TYPE_4__* _glfwPlatformGetCurrentContext () ;
 int eglSwapBuffers (int ,int ) ;

__attribute__((used)) static void swapBuffersEGL(_GLFWwindow* window)
{
    if (window != _glfwPlatformGetCurrentContext())
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "EGL: The context must be current on the calling thread when swapping buffers");
        return;
    }

    eglSwapBuffers(_glfw.egl.display, window->context.egl.surface);
}
