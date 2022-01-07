
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XEvent ;


 int XIfEvent (int ,int *,int ,int *) ;
 int g_x11_dpy ;
 int x11_wait_notify ;

void x11_event_queue_check(XEvent *event)
{
   XIfEvent(g_x11_dpy, event, x11_wait_notify, ((void*)0));
}
