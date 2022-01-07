
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int handle; } ;
struct TYPE_8__ {TYPE_1__ x11; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {int cursor; int display; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;


 int CurrentTime ;
 int XDefineCursor (int ,int ,int ) ;
 int XUngrabPointer (int ,int ) ;
 TYPE_5__ _glfw ;

__attribute__((used)) static void hideCursor(_GLFWwindow* window)
{
    XUngrabPointer(_glfw.x11.display, CurrentTime);
    XDefineCursor(_glfw.x11.display, window->x11.handle, _glfw.x11.cursor);
}
