
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int _GLFWwindow ;
typedef int XPointer ;
typedef int Window ;
struct TYPE_3__ {int context; int display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 scalar_t__ XFindContext (int ,int ,int ,int *) ;
 TYPE_2__ _glfw ;

__attribute__((used)) static _GLFWwindow* findWindowByHandle(Window handle)
{
    _GLFWwindow* window;

    if (XFindContext(_glfw.x11.display,
                     handle,
                     _glfw.x11.context,
                     (XPointer*) &window) != 0)
    {
        return ((void*)0);
    }

    return window;
}
