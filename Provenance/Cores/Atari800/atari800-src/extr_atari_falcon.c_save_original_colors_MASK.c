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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * coltable_backup ; 
 int /*<<< orphan*/  f030_coltable_ptr ; 
 int /*<<< orphan*/  f030coltable_backup ; 
 int /*<<< orphan*/  get_colors_on_f030 ; 
 int /*<<< orphan*/  gl_vdi_handle ; 
 scalar_t__ reprogram_VIDEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	int i;

	if (reprogram_VIDEL) {
		f030_coltable_ptr = f030coltable_backup;
		FUNC0(get_colors_on_f030);
		/* VgetRGB(0, 256, RGBcoltable_backup); */
	}
	else {
		for(i=0; i<256; i++)
			FUNC1(gl_vdi_handle, i, 1, coltable_backup[i]);
	}
}