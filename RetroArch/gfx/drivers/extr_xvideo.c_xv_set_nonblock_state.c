
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port; } ;
typedef TYPE_1__ xv_t ;
typedef scalar_t__ Atom ;


 scalar_t__ None ;
 int RARCH_WARN (char*) ;
 scalar_t__ XInternAtom (int ,char*,int) ;
 int XvSetPortAttribute (int ,scalar_t__,scalar_t__,int) ;
 int g_x11_dpy ;

__attribute__((used)) static void xv_set_nonblock_state(void *data, bool state)
{
   xv_t *xv = (xv_t*)data;
   Atom atom = XInternAtom(g_x11_dpy, "XV_SYNC_TO_VBLANK", 1);

   if (atom != None && xv->port)
      XvSetPortAttribute(g_x11_dpy, xv->port, atom, !state);
   else
      RARCH_WARN("Failed to set SYNC_TO_VBLANK attribute.\n");
}
