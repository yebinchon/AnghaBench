
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ context; scalar_t__ surface; int * visual; int * client; } ;
struct TYPE_7__ {scalar_t__ api; } ;
struct TYPE_10__ {TYPE_3__ egl; TYPE_1__ context; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_8__ {int display; } ;
struct TYPE_11__ {TYPE_2__ egl; } ;


 scalar_t__ EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_SURFACE ;
 scalar_t__ GLFW_OPENGL_API ;
 int XFree (int *) ;
 TYPE_6__ _glfw ;
 int _glfw_dlclose (int *) ;
 int _glfw_eglDestroyContext (int ,scalar_t__) ;
 int _glfw_eglDestroySurface (int ,scalar_t__) ;

void _glfwDestroyContext(_GLFWwindow* window)
{





    {
        if (window->egl.client)
        {
            _glfw_dlclose(window->egl.client);
            window->egl.client = ((void*)0);
        }
    }
    if (window->egl.surface)
    {
        _glfw_eglDestroySurface(_glfw.egl.display, window->egl.surface);
        window->egl.surface = EGL_NO_SURFACE;
    }

    if (window->egl.context)
    {
        _glfw_eglDestroyContext(_glfw.egl.display, window->egl.context);
        window->egl.context = EGL_NO_CONTEXT;
    }
}
