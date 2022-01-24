#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sem_t ;
typedef  int /*<<< orphan*/  XTextProperty ;
struct TYPE_10__ {int /*<<< orphan*/  keycode; } ;
struct TYPE_9__ {unsigned int width; unsigned int height; } ;
struct TYPE_11__ {int type; TYPE_2__ xkey; TYPE_1__ xconfigure; } ;
typedef  TYPE_3__ XEvent ;
typedef  int /*<<< orphan*/  Window ;
struct TYPE_12__ {scalar_t__ class; } ;
typedef  TYPE_4__ Visual ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
#define  ButtonPress 132 
#define  ConfigureNotify 131 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,int) ; 
#define  Expose 130 
 int ExposureMask ; 
#define  KeyPress 129 
 int KeyPressMask ; 
#define  KeyRelease 128 
 int KeyReleaseMask ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int StructureNotifyMask ; 
 scalar_t__ TrueColor ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int const,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,int,char*,int,int) ; 
 int scr_changed ; 
 int scr_h ; 
 int scr_w ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  verstring ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * xlib_display ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  xlib_window ; 

__attribute__((used)) static void *FUNC29(void *targ)
{
	unsigned int width, height, display_width, display_height;
	sem_t *sem = targ;
	XTextProperty windowName;
	Window win;
	XEvent report;
	Display *display;
	Visual *visual;
	int screen;

	FUNC15();

	xlib_display = display = FUNC18(NULL);
	if (display == NULL)
	{
		FUNC22(stderr, "cannot connect to X server %s\n",
				FUNC14(NULL));
		FUNC26(sem);
		return NULL;
	}

	visual = FUNC2(display, 0);
	if (visual->class != TrueColor)
	{
		FUNC22(stderr, "cannot handle non true color visual\n");
		FUNC12(display);
		FUNC26(sem);
		return NULL;
	}

	FUNC25("X vendor: %s, rel: %d, display: %s, protocol ver: %d.%d\n", FUNC9(display),
		FUNC10(display), FUNC4(display), FUNC7(display),
		FUNC6(display));

	screen = FUNC1(display);

	FUNC27(display, visual);
	FUNC26(sem);

	display_width = FUNC5(display, screen);
	display_height = FUNC3(display, screen);

	xlib_window = win = FUNC13(display,
			FUNC8(display, screen),
			display_width / 2 - scr_w / 2,
			display_height / 2 - scr_h / 2,
			scr_w + 2, scr_h + 2, 1,
			FUNC0(display, screen),
			FUNC0(display, screen));

	FUNC21((char **)&verstring, 1, &windowName);
	FUNC20(display, win, &windowName);

	FUNC19(display, win, ExposureMask |
			KeyPressMask | KeyReleaseMask |
			StructureNotifyMask);

	FUNC16(display, win);

	while (1)
	{
		FUNC17(display, &report);
		switch (report.type)
		{
			case Expose:
				while (FUNC11(display, Expose, &report))
					;
				FUNC28();
				break;

			case ConfigureNotify:
				width = report.xconfigure.width;
				height = report.xconfigure.height;
				if (scr_w != width - 2 || scr_h != height - 2) {
					scr_w = width - 2;
					scr_h = height - 2;
					scr_changed = 1;
				}
				break;

			case ButtonPress:
				break;

			case KeyPress:
				FUNC23(report.xkey.keycode);
				break;

			case KeyRelease:
				FUNC24(report.xkey.keycode);
				break;

			default:
				break;
		}
	}
}