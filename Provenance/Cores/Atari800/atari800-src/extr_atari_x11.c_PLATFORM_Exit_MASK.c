#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  cmap ; 
 int /*<<< orphan*/ * display ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * image ; 
 int /*<<< orphan*/ * image_data ; 
 int js0 ; 
 int js1 ; 
 int /*<<< orphan*/  pixmap ; 
 scalar_t__ private_cmap ; 
 int /*<<< orphan*/  window ; 

int FUNC13(int run_monitor)
{
	int restart;

	FUNC0();
	if (run_monitor) {
		FUNC10();
		restart = FUNC1();
		FUNC9();
	}
	else
		restart = FALSE;

	if (!restart) {
		if (image_data != NULL)
			FUNC12(image_data);

		if (display != NULL) {
			FUNC7(display, True);

			if (private_cmap)
				FUNC5(display, cmap);

#ifdef SHM
			if (image != NULL)
				XDestroyImage(image);
#else
			FUNC6(display, pixmap);
#endif
			FUNC8(display, window);
			FUNC4(display, window);
			FUNC10();
			FUNC2(display);
		}

#ifdef LINUX_JOYSTICK
		if (js0 != -1)
			close(js0);

		if (js1 != -1)
			close(js1);
#endif

	}
	return restart;
}