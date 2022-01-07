
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int reply ;
struct TYPE_12__ {int requestor; int time; int target; int selection; int display; } ;
typedef TYPE_3__ XSelectionRequestEvent ;
struct TYPE_10__ {int time; int target; int selection; int requestor; int display; int type; int property; } ;
struct TYPE_13__ {TYPE_1__ xselection; TYPE_3__ xselectionrequest; } ;
typedef TYPE_4__ XEvent ;
struct TYPE_11__ {int display; } ;
struct TYPE_14__ {TYPE_2__ x11; } ;


 int False ;
 int SelectionNotify ;
 int XSendEvent (int ,int ,int ,int ,TYPE_4__*) ;
 TYPE_8__ _glfw ;
 int memset (TYPE_4__*,int ,int) ;
 int writeTargetToProperty (TYPE_3__ const*) ;

__attribute__((used)) static void handleSelectionRequest(XEvent* event)
{
    const XSelectionRequestEvent* request = &event->xselectionrequest;

    XEvent reply;
    memset(&reply, 0, sizeof(reply));

    reply.xselection.property = writeTargetToProperty(request);
    reply.xselection.type = SelectionNotify;
    reply.xselection.display = request->display;
    reply.xselection.requestor = request->requestor;
    reply.xselection.selection = request->selection;
    reply.xselection.target = request->target;
    reply.xselection.time = request->time;

    XSendEvent(_glfw.x11.display, request->requestor, False, 0, &reply);
}
