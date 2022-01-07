
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int initial_state; int flags; } ;
typedef TYPE_1__ XWMHints ;
struct TYPE_10__ {int override_redirect; } ;
typedef TYPE_2__ XSetWindowAttributes ;
struct TYPE_11__ {int type; } ;
typedef TYPE_3__ XEvent ;
typedef int Window ;
struct TYPE_12__ {scalar_t__ (* pXNextEvent ) (int *,TYPE_3__*) ;int (* pXSync ) (int *,int ) ;int (* pXkbSetDetectableAutoRepeat ) (int *,int,int *) ;int (* pXGrabKeyboard ) (int *,int ,int ,int ,int ,int ) ;int (* pXMapWindow ) (int *,int ) ;int (* pXMoveResizeWindow ) (int *,int ,int ,int ,int,int) ;int (* pXChangeWindowAttributes ) (int *,int ,int ,TYPE_2__*) ;int (* pXWithdrawWindow ) (int *,int ,int) ;int (* pXSetWMHints ) (int *,int ,TYPE_1__*) ;int * display; int window; } ;
typedef int Display ;


 int CWOverrideRedirect ;
 int CurrentTime ;
 int DefaultScreen (int *) ;
 int DisplayHeight (int *,int) ;
 int DisplayWidth (int *,int) ;
 int False ;

 int GrabModeAsync ;
 int IconicState ;
 int StateHint ;
 int True ;
 TYPE_8__ g_xstuff ;
 int stub1 (int *,int ,int) ;
 int stub10 (int *,int ,int ,int ,int ,int ) ;
 int stub11 (int *,int,int *) ;
 int stub12 (int *,int ) ;
 int stub2 (int *,int ,int ,TYPE_2__*) ;
 int stub3 (int *,int ,TYPE_1__*) ;
 int stub4 (int *,int ) ;
 scalar_t__ stub5 (int *,TYPE_3__*) ;
 int stub6 (int *,int ,int) ;
 int stub7 (int *,int ,int ,TYPE_2__*) ;
 int stub8 (int *,int ,int ,int ,int,int) ;
 int stub9 (int *,int ) ;
 int x11h_wait_vmstate () ;

__attribute__((used)) static int x11h_minimize(void)
{
 XSetWindowAttributes attributes;
 Display *display = g_xstuff.display;
 Window window = g_xstuff.window;
 int screen = DefaultScreen(g_xstuff.display);
 int display_width, display_height;
 XWMHints wm_hints;
 XEvent evt;

 g_xstuff.pXWithdrawWindow(display, window, screen);

 attributes.override_redirect = False;
 g_xstuff.pXChangeWindowAttributes(display, window,
  CWOverrideRedirect, &attributes);

 wm_hints.flags = StateHint;
 wm_hints.initial_state = IconicState;
 g_xstuff.pXSetWMHints(display, window, &wm_hints);

 g_xstuff.pXMapWindow(display, window);

 while (g_xstuff.pXNextEvent(display, &evt) == 0)
 {

  switch (evt.type)
  {
   case 128:
    goto out;
   default:
    break;
  }
 }

out:
 g_xstuff.pXWithdrawWindow(display, window, screen);


 x11h_wait_vmstate();

 attributes.override_redirect = True;
 g_xstuff.pXChangeWindowAttributes(display, window,
  CWOverrideRedirect, &attributes);


 display_width = DisplayWidth(display, screen);
 display_height = DisplayHeight(display, screen);
 g_xstuff.pXMoveResizeWindow(display, window, 0, 0, display_width, display_height);

 g_xstuff.pXMapWindow(display, window);
 g_xstuff.pXGrabKeyboard(display, window, False, GrabModeAsync, GrabModeAsync, CurrentTime);
 g_xstuff.pXkbSetDetectableAutoRepeat(display, 1, ((void*)0));


 g_xstuff.pXSync(display, False);

 return 0;
}
