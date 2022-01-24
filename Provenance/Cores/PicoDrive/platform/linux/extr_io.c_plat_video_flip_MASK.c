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
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int current_bpp ; 
 int* current_pal ; 
 int g_screen_height ; 
 void* g_screen_ptr ; 
 int g_screen_width ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ scr_changed ; 
 TYPE_1__* ximage ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xlib_display ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	unsigned int *image;
	int pixel_count, i;

	if (ximage == NULL)
		return;

	pixel_count = g_screen_width * g_screen_height;
	image = (void *)ximage->data;

	if (current_bpp == 8)
	{
		unsigned char *pixels = g_screen_ptr;
		int pix;

		for (i = 0; i < pixel_count; i++)
		{
			pix = current_pal[pixels[i]];
			image[i] = pix;
		}
	}
	else
	{
		unsigned short *pixels = g_screen_ptr;

		for (i = 0; i < pixel_count; i++)
		{
			/*  in:           rrrr rggg gggb bbbb */
			/* out: rrrr r000 gggg gg00 bbbb b000 */
			image[i]  = (pixels[i] << 8) & 0xf80000;
			image[i] |= (pixels[i] << 5) & 0x00fc00;
			image[i] |= (pixels[i] << 3) & 0x0000f8;
		}
	}
	FUNC4();

	if (scr_changed) {
		FUNC2();
		FUNC3(xlib_display, FUNC0(xlib_display, 0));

		// propagate new ponters to renderers
		FUNC1(0, 0);
	}
}