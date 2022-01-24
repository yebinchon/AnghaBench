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
 int /*<<< orphan*/  PicoCDLoadProgressCB ; 
 int /*<<< orphan*/  PicoCartLoadProgressCB ; 
 scalar_t__ cdload_called ; 
 int /*<<< orphan*/  cdload_progress_cb ; 
 int /*<<< orphan*/  load_progress_cb ; 
 int me_sfont_h ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,char const*,int) ; 
 int FUNC3 (char const*) ; 

void FUNC4(const char *rom_name)
{
	const char *p = rom_name + FUNC3(rom_name);
	int i;

	while (p > rom_name && *p != '/')
		p--;

	/* fill all buffers, callbacks won't update in full */
	for (i = 0; i < 3; i++) {
		FUNC0(1, 1);
		FUNC2(1, 1, "Loading", 0xffff);
		FUNC2(1, me_sfont_h, p, 0xffff);
		FUNC1();
	}

	PicoCartLoadProgressCB = load_progress_cb;
	PicoCDLoadProgressCB = cdload_progress_cb;
	cdload_called = 0;
}