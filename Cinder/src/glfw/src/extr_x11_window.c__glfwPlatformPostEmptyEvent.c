
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int event ;
struct TYPE_9__ {int handle; } ;
struct TYPE_12__ {TYPE_1__ x11; } ;
typedef TYPE_4__ _GLFWwindow ;
struct TYPE_11__ {int format; int message_type; int window; } ;
struct TYPE_13__ {TYPE_3__ xclient; int type; } ;
typedef TYPE_5__ XEvent ;
struct TYPE_10__ {int display; int NULL_; } ;
struct TYPE_14__ {TYPE_2__ x11; TYPE_4__* windowListHead; } ;


 int ClientMessage ;
 int False ;
 int XFlush (int ) ;
 int XSendEvent (int ,int ,int ,int ,TYPE_5__*) ;
 TYPE_7__ _glfw ;
 int memset (TYPE_5__*,int ,int) ;

void _glfwPlatformPostEmptyEvent(void)
{
    XEvent event;
    _GLFWwindow* window = _glfw.windowListHead;

    memset(&event, 0, sizeof(event));
    event.type = ClientMessage;
    event.xclient.window = window->x11.handle;
    event.xclient.format = 32;
    event.xclient.message_type = _glfw.x11.NULL_;

    XSendEvent(_glfw.x11.display, window->x11.handle, False, 0, &event);
    XFlush(_glfw.x11.display);
}
