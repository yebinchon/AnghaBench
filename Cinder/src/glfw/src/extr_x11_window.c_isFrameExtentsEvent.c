
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int handle; } ;
struct TYPE_11__ {TYPE_2__ x11; } ;
typedef TYPE_4__ _GLFWwindow ;
typedef scalar_t__ XPointer ;
struct TYPE_10__ {scalar_t__ state; scalar_t__ atom; int window; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_3__ xproperty; } ;
typedef TYPE_5__ XEvent ;
struct TYPE_8__ {scalar_t__ NET_FRAME_EXTENTS; } ;
struct TYPE_13__ {TYPE_1__ x11; } ;
typedef int Display ;
typedef int Bool ;


 scalar_t__ PropertyNewValue ;
 scalar_t__ PropertyNotify ;
 TYPE_7__ _glfw ;

__attribute__((used)) static Bool isFrameExtentsEvent(Display* display, XEvent* event, XPointer pointer)
{
    _GLFWwindow* window = (_GLFWwindow*) pointer;
    return event->type == PropertyNotify &&
           event->xproperty.state == PropertyNewValue &&
           event->xproperty.window == window->x11.handle &&
           event->xproperty.atom == _glfw.x11.NET_FRAME_EXTENTS;
}
