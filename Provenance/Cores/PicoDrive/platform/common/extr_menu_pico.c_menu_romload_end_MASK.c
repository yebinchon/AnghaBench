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
 int /*<<< orphan*/ * PicoCDLoadProgressCB ; 
 int /*<<< orphan*/ * PicoCartLoadProgressCB ; 
 scalar_t__ cdload_called ; 
 int me_sfont_h ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*,int) ; 

void FUNC3(void)
{
	PicoCartLoadProgressCB = NULL;
	PicoCDLoadProgressCB = NULL;

	FUNC0(0, 1);
	FUNC2(1, (cdload_called ? 6 : 3) * me_sfont_h,
		"Starting emulation...", 0xffff);
	FUNC1();
}