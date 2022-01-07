
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {scalar_t__ keycode; scalar_t__ time; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ xkey; } ;
typedef TYPE_2__ XEvent ;


 scalar_t__ KeyPress ;
 scalar_t__ X11_PendingInput () ;
 int XNextEvent (int *,TYPE_2__*) ;
 int XPeekEvent (int *,TYPE_2__*) ;
 int assert (int ) ;
 int * dpy ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean repeated_press(XEvent *event)
{
  XEvent peekevent;
  qboolean repeated = qfalse;

  assert(dpy != ((void*)0));

  if (X11_PendingInput())
  {
    XPeekEvent(dpy, &peekevent);

    if ((peekevent.type == KeyPress) &&
        (peekevent.xkey.keycode == event->xkey.keycode) &&
        (peekevent.xkey.time == event->xkey.time))
    {
      repeated = qtrue;
      XNextEvent(dpy, &peekevent);
    }
  }

  return(repeated);
}
