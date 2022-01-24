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
typedef  int /*<<< orphan*/  VIDEOMODE_resolution_t ;
typedef  int /*<<< orphan*/  VIDEOMODE_MODE_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,double*,double*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int*,unsigned int*,double,double) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ VIDEOMODE_rotate90 ; 

__attribute__((used)) static int FUNC9(void)
{
	VIDEOMODE_MODE_t display_mode = FUNC2();
#if SUPPORTS_ROTATE_VIDEOMODE
	int rotate = VIDEOMODE_rotate90 && (PLATFORM_SupportsVideomode(display_mode, TRUE, TRUE)
	                                    || PLATFORM_SupportsVideomode(display_mode, FALSE, TRUE));
#else
	int rotate = FALSE;
#endif
	unsigned int out_w, out_h;
	double mult_w, mult_h;
	VIDEOMODE_resolution_t *res_for_mode = FUNC5(display_mode, rotate);
	VIDEOMODE_resolution_t res;
	if (res_for_mode == NULL)
		return FALSE;

	res = *res_for_mode;
	if (rotate)
		FUNC6(&res);

	FUNC3(&out_w, &out_h, display_mode);
	FUNC8();
	FUNC0(&res, res_for_mode, display_mode, out_w, out_h, &mult_w, &mult_h, rotate);
	FUNC1(&res, &out_w, &out_h, mult_w, mult_h);
	FUNC7(&res, display_mode, out_w, out_h, FALSE, rotate);
	return TRUE;
}