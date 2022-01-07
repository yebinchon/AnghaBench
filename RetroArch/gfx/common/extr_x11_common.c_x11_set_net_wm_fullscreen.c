
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void** l; } ;
struct TYPE_6__ {int format; TYPE_1__ data; int window; void* message_type; int send_event; int type; } ;
struct TYPE_7__ {TYPE_2__ xclient; int member_0; } ;
typedef TYPE_3__ XEvent ;
typedef int Window ;
typedef int Display ;


 int ClientMessage ;
 int DefaultRootWindow (int *) ;
 int False ;
 int SubstructureNotifyMask ;
 int SubstructureRedirectMask ;
 int True ;
 void* XA_NET_WM_STATE ;
 void* XA_NET_WM_STATE_FULLSCREEN ;
 void* XInternAtom (int *,char*,int ) ;
 int XSendEvent (int *,int ,int ,int,TYPE_3__*) ;
 void* _NET_WM_STATE_ADD ;

void x11_set_net_wm_fullscreen(Display *dpy, Window win)
{
   XEvent xev = {0};

   XA_NET_WM_STATE = XInternAtom(dpy, "_NET_WM_STATE", False);
   XA_NET_WM_STATE_FULLSCREEN = XInternAtom(dpy, "_NET_WM_STATE_FULLSCREEN", False);

   xev.xclient.type = ClientMessage;
   xev.xclient.send_event = True;
   xev.xclient.message_type = XA_NET_WM_STATE;
   xev.xclient.window = win;
   xev.xclient.format = 32;
   xev.xclient.data.l[0] = _NET_WM_STATE_ADD;
   xev.xclient.data.l[1] = XA_NET_WM_STATE_FULLSCREEN;

   XSendEvent(dpy, DefaultRootWindow(dpy), False,
         SubstructureRedirectMask | SubstructureNotifyMask,
         &xev);
}
