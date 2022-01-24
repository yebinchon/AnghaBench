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
struct TYPE_2__ {int scaling; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDF_RGB555 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  SCALE_1x1 132 
#define  SCALE_2x2_2x2 131 
#define  SCALE_2x2_3x2 130 
#define  SCALE_CUSTOM 129 
#define  SCALE_FULLSCREEN 128 
 TYPE_1__ currentConfig ; 
 scalar_t__ doing_bg_frame ; 
 int g_layer_ch ; 
 int g_layer_cw ; 
 int g_layer_cx ; 
 int g_layer_cy ; 
 int g_layer_h ; 
 int g_layer_w ; 
 int g_layer_x ; 
 int g_layer_y ; 
 int g_osd_fps_x ; 
 int g_osd_y ; 
 int /*<<< orphan*/  layer_fb ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,int,int,int,int,int) ; 

void FUNC5(int start_line, int line_count, int is_32cols)
{
	int fb_w = 320, fb_h = 240, fb_left = 0, fb_right = 0, fb_top = 0, fb_bottom = 0;

	if (doing_bg_frame)
		return;

	if (is_32cols) {
		fb_w = 256;
		fb_left = fb_right = 32;
	}

	switch (currentConfig.scaling) {
	case SCALE_1x1:
		g_layer_w = fb_w;
		g_layer_h = fb_h;
		break;
	case SCALE_2x2_3x2:
		g_layer_w = fb_w * (is_32cols ? 3 : 2);
		g_layer_h = fb_h * 2;
		break;
	case SCALE_2x2_2x2:
		g_layer_w = fb_w * 2;
		g_layer_h = fb_h * 2;
		break;
	case SCALE_FULLSCREEN:
		g_layer_w = 800;
		g_layer_h = 480;
		break;
	case SCALE_CUSTOM:
		g_layer_x = g_layer_cx;
		g_layer_y = g_layer_cy;
		g_layer_w = g_layer_cw;
		g_layer_h = g_layer_ch;
		break;
	}

	if (currentConfig.scaling != SCALE_CUSTOM) {
		// center the layer
		g_layer_x = 800 / 2 - g_layer_w / 2;
		g_layer_y = 480 / 2 - g_layer_h / 2;
	}

	switch (currentConfig.scaling) {
	case SCALE_FULLSCREEN:
	case SCALE_CUSTOM:
		fb_top = start_line;
		fb_h = line_count;
		break;
	}
	g_osd_fps_x = is_32cols ? 232 : 264;
	g_osd_y = fb_top + fb_h - 8;

	FUNC2(1, g_layer_x, g_layer_y, g_layer_w, g_layer_h);
	FUNC3(layer_fb);
	FUNC4(layer_fb, fb_w, fb_h, 16, fb_left, fb_right, fb_top, fb_bottom, 4);
	FUNC1();

	FUNC0(PDF_RGB555, 0);
}