#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  blnk_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Clocky_SSval ; 
 int /*<<< orphan*/  END_UPDATE ; 
 int /*<<< orphan*/  FMD_FINISH ; 
 int /*<<< orphan*/  HOST_HEIGHT ; 
 int /*<<< orphan*/  HOST_WIDTH ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  M_ON ; 
 int /*<<< orphan*/  NOVA_SSval ; 
 TYPE_1__* NOVA_xcb ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ new_videoram ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(int run_monitor)
{
	FUNC4();

#ifdef BUFFERED_LOG
	Log_flushlog();
#endif

	if (run_monitor) {
		if (FUNC2()) {
			FUNC3();

			return 1;			/* go back to emulation */
		}
	}

	if (new_videoram)
		FUNC7(new_videoram);

	/* unlock GEM */
	FUNC9(END_UPDATE);
	FUNC6(FMD_FINISH, 0, 0, 0, 0, 0, 0, HOST_WIDTH, HOST_HEIGHT);	/* redraw screen */
	FUNC8(M_ON, NULL);
	/* GEM exit */
	FUNC5();

#ifdef SCREENSAVER
	Clocky_SS(Clocky_SSval);
	if (NOVA_xcb)
		NOVA_xcb->blnk_time = NOVA_SSval;
#endif

	return 0;
}