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
 void* DrawLineDest ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int gp2x_current_bpp ; 
 int /*<<< orphan*/  ld_counter ; 
 scalar_t__ ld_left ; 
 scalar_t__ ld_lines ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 

__attribute__((used)) static int FUNC3(unsigned int num)
{
	void *oldline = DrawLineDest;

	if (&emu_scan_end)
		FUNC1(ld_counter);

	ld_counter++;
	ld_left--;
	if (ld_left <= 0) {
		ld_left = ld_lines;

		FUNC0(num);
		FUNC2(DrawLineDest, oldline, 320 * gp2x_current_bpp / 8 / 4);
		if (&emu_scan_end)
			FUNC1(ld_counter);

		ld_counter++;
	}

	return 0;
}