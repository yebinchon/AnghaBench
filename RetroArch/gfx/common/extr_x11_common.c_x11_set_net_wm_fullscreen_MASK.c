#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void** l; } ;
struct TYPE_6__ {int format; TYPE_1__ data; int /*<<< orphan*/  window; void* message_type; int /*<<< orphan*/  send_event; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_2__ xclient; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ XEvent ;
typedef  int /*<<< orphan*/  Window ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  ClientMessage ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  False ; 
 int SubstructureNotifyMask ; 
 int SubstructureRedirectMask ; 
 int /*<<< orphan*/  True ; 
 void* XA_NET_WM_STATE ; 
 void* XA_NET_WM_STATE_FULLSCREEN ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 void* _NET_WM_STATE_ADD ; 

void FUNC3(Display *dpy, Window win)
{
   XEvent xev                 = {0};

   XA_NET_WM_STATE            = FUNC1(dpy, "_NET_WM_STATE", False);
   XA_NET_WM_STATE_FULLSCREEN = FUNC1(dpy, "_NET_WM_STATE_FULLSCREEN", False);

   xev.xclient.type           = ClientMessage;
   xev.xclient.send_event     = True;
   xev.xclient.message_type   = XA_NET_WM_STATE;
   xev.xclient.window         = win;
   xev.xclient.format         = 32;
   xev.xclient.data.l[0]      = _NET_WM_STATE_ADD;
   xev.xclient.data.l[1]      = XA_NET_WM_STATE_FULLSCREEN;

   FUNC2(dpy, FUNC0(dpy), False,
         SubstructureRedirectMask | SubstructureNotifyMask,
         &xev);
}