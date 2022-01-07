
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* l; } ;
struct TYPE_6__ {int format; TYPE_1__ data; int window; int message_type; int send_event; int type; } ;
struct TYPE_7__ {TYPE_2__ xclient; int member_0; } ;
typedef TYPE_3__ XEvent ;
typedef int Window ;
typedef int Display ;


 int ClientMessage ;
 int DefaultRootWindow (int *) ;
 int False ;
 int MOVERESIZE_X_SHIFT ;
 int MOVERESIZE_Y_SHIFT ;
 int SubstructureNotifyMask ;
 int SubstructureRedirectMask ;
 int True ;
 int XA_NET_MOVERESIZE_WINDOW ;
 int XInternAtom (int *,char*,int ) ;
 int XSendEvent (int *,int ,int ,int,TYPE_3__*) ;

void x11_move_window(Display *dpy, Window win, int x, int y,
      unsigned width, unsigned height)
{
   XEvent xev = {0};

   XA_NET_MOVERESIZE_WINDOW = XInternAtom(dpy,
     "_NET_MOVERESIZE_WINDOW", False);

   xev.xclient.type = ClientMessage;
   xev.xclient.send_event = True;
   xev.xclient.message_type = XA_NET_MOVERESIZE_WINDOW;
   xev.xclient.window = win;
   xev.xclient.format = 32;
   xev.xclient.data.l[0] = (1 << MOVERESIZE_X_SHIFT)
      | (1 << MOVERESIZE_Y_SHIFT);
   xev.xclient.data.l[1] = x;
   xev.xclient.data.l[2] = y;

   XSendEvent(dpy, DefaultRootWindow(dpy), False,
         SubstructureRedirectMask | SubstructureNotifyMask,
         &xev);
}
