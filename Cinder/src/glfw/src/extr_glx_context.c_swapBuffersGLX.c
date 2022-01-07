
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int window; } ;
struct TYPE_9__ {TYPE_2__ glx; } ;
struct TYPE_10__ {TYPE_3__ context; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_7__ {int display; } ;
struct TYPE_11__ {TYPE_1__ x11; } ;


 TYPE_6__ _glfw ;
 int glXSwapBuffers (int ,int ) ;

__attribute__((used)) static void swapBuffersGLX(_GLFWwindow* window)
{
    glXSwapBuffers(_glfw.x11.display, window->context.glx.window);
}
