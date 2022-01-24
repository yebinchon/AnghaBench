#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  initial_state; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ XWMHints ;
struct TYPE_10__ {int /*<<< orphan*/  override_redirect; } ;
typedef  TYPE_2__ XSetWindowAttributes ;
struct TYPE_11__ {int type; } ;
typedef  TYPE_3__ XEvent ;
typedef  int /*<<< orphan*/  Window ;
struct TYPE_12__ {scalar_t__ (* pXNextEvent ) (int /*<<< orphan*/ *,TYPE_3__*) ;int /*<<< orphan*/  (* pXSync ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* pXkbSetDetectableAutoRepeat ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* pXGrabKeyboard ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* pXMapWindow ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* pXMoveResizeWindow ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ;int /*<<< orphan*/  (* pXChangeWindowAttributes ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ;int /*<<< orphan*/  (* pXWithdrawWindow ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* pXSetWMHints ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ;int /*<<< orphan*/ * display; int /*<<< orphan*/  window; } ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  CWOverrideRedirect ; 
 int /*<<< orphan*/  CurrentTime ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  False ; 
#define  FocusIn 128 
 int /*<<< orphan*/  GrabModeAsync ; 
 int /*<<< orphan*/  IconicState ; 
 int /*<<< orphan*/  StateHint ; 
 int /*<<< orphan*/  True ; 
 TYPE_8__ g_xstuff ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int FUNC16(void)
{
	XSetWindowAttributes attributes;
	Display *display = g_xstuff.display;
	Window window = g_xstuff.window;
	int screen = FUNC0(g_xstuff.display);
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
		// printf("m event %d\n", evt.type);
		switch (evt.type)
		{
			case FocusIn:
				goto out;
			default:
				break;
		}
	}

out:
	g_xstuff.pXWithdrawWindow(display, window, screen);

	// must wait for some magic vmstate property change before setting override_redirect
	FUNC15();

	attributes.override_redirect = True;
	g_xstuff.pXChangeWindowAttributes(display, window,
		CWOverrideRedirect, &attributes);

	// fixup window after resize on override_redirect loss
	display_width = FUNC2(display, screen);
	display_height = FUNC1(display, screen);
	g_xstuff.pXMoveResizeWindow(display, window, 0, 0, display_width, display_height);

	g_xstuff.pXMapWindow(display, window);
	g_xstuff.pXGrabKeyboard(display, window, False, GrabModeAsync, GrabModeAsync, CurrentTime);
	g_xstuff.pXkbSetDetectableAutoRepeat(display, 1, NULL);

	// we don't know when event dispatch will be called, so sync now
	g_xstuff.pXSync(display, False);

	return 0;
}