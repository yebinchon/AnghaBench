
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


 int ButtonPressMask ;
 int ButtonReleaseMask ;
 int CurrentTime ;
 int GrabModeAsync ;
 int PointerMotionMask ;
 int True ;
 int XGrabPointer (int ,int ,int ,int,int ,int ,int ,int ,int ) ;
 TYPE_5__ _glfw ;

__attribute__((used)) static void disableCursor(_GLFWwindow* window)
{
    XGrabPointer(_glfw.x11.display, window->x11.handle, True,
                 ButtonPressMask | ButtonReleaseMask | PointerMotionMask,
                 GrabModeAsync, GrabModeAsync,
                 window->x11.handle, _glfw.x11.cursor, CurrentTime);
}
