
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int False ;
 int XSetErrorHandler (int *) ;
 int XSync (int ,int ) ;
 TYPE_2__ _glfw ;

void _glfwReleaseXErrorHandler(void)
{

    XSync(_glfw.x11.display, False);
    XSetErrorHandler(((void*)0));
}
