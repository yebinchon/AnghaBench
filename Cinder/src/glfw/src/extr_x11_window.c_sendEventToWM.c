
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int event ;
struct TYPE_11__ {int handle; } ;
struct TYPE_15__ {TYPE_1__ x11; } ;
typedef TYPE_5__ _GLFWwindow ;
struct TYPE_12__ {long* l; } ;
struct TYPE_13__ {int format; TYPE_2__ data; int message_type; int window; } ;
struct TYPE_16__ {TYPE_3__ xclient; int type; } ;
typedef TYPE_6__ XEvent ;
struct TYPE_14__ {int root; int display; } ;
struct TYPE_17__ {TYPE_4__ x11; } ;
typedef int Atom ;


 int ClientMessage ;
 int False ;
 int SubstructureNotifyMask ;
 int SubstructureRedirectMask ;
 int XSendEvent (int ,int ,int ,int,TYPE_6__*) ;
 TYPE_9__ _glfw ;
 int memset (TYPE_6__*,int ,int) ;

__attribute__((used)) static void sendEventToWM(_GLFWwindow* window, Atom type,
                          long a, long b, long c, long d, long e)
{
    XEvent event;
    memset(&event, 0, sizeof(event));

    event.type = ClientMessage;
    event.xclient.window = window->x11.handle;
    event.xclient.format = 32;
    event.xclient.message_type = type;
    event.xclient.data.l[0] = a;
    event.xclient.data.l[1] = b;
    event.xclient.data.l[2] = c;
    event.xclient.data.l[3] = d;
    event.xclient.data.l[4] = e;

    XSendEvent(_glfw.x11.display, _glfw.x11.root,
               False,
               SubstructureNotifyMask | SubstructureRedirectMask,
               &event);
}
