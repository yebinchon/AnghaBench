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
struct fb_fix_screeninfo {char* id; int smem_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBIOGET_FSCREENINFO ; 
 int FB_BUF_COUNT ; 
 int /*<<< orphan*/  FB_MEM_SIZE ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* fb_paddr ; 
 scalar_t__ fb_work_buf ; 
 scalar_t__ fbdev ; 
 char* g_screen_ptr ; 
 char** gp2x_screens ; 
 int /*<<< orphan*/  gp2x_video_RGB_setscaling ; 
 int /*<<< orphan*/  gp2x_video_RGB_setscaling_ ; 
 int /*<<< orphan*/  gp2x_video_changemode_ll ; 
 int /*<<< orphan*/  gp2x_video_changemode_ll_ ; 
 int /*<<< orphan*/  gp2x_video_flip ; 
 int /*<<< orphan*/  gp2x_video_flip2 ; 
 int /*<<< orphan*/  gp2x_video_flip2_ ; 
 int /*<<< orphan*/  gp2x_video_flip_ ; 
 int /*<<< orphan*/  gp2x_video_setpalette ; 
 int /*<<< orphan*/  gp2x_video_setpalette_ ; 
 int /*<<< orphan*/  gp2x_video_wait_vsync ; 
 int /*<<< orphan*/  gp2x_video_wait_vsync_ ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct fb_fix_screeninfo*) ; 
 int /*<<< orphan*/  memdev ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

void FUNC7(void)
{
	struct fb_fix_screeninfo fbfix;
	int i, ret;

	fbdev = FUNC4("/dev/fb0", O_RDWR);
	if (fbdev < 0) {
		FUNC5("can't open fbdev");
		FUNC0(1);
	}

	ret = FUNC1(fbdev, FBIOGET_FSCREENINFO, &fbfix);
	if (ret == -1) {
		FUNC5("ioctl(fbdev) failed");
		FUNC0(1);
	}

	FUNC6("framebuffer: \"%s\" @ %08lx\n", fbfix.id, fbfix.smem_start);
	fb_paddr[0] = fbfix.smem_start;

	gp2x_screens[0] = FUNC3(0, FB_MEM_SIZE, PROT_READ|PROT_WRITE,
			MAP_SHARED, memdev, fb_paddr[0]);
	if (gp2x_screens[0] == MAP_FAILED)
	{
		FUNC5("mmap(gp2x_screens) failed");
		FUNC0(1);
	}
	FUNC2(gp2x_screens[0], 0, FB_MEM_SIZE);

	FUNC6("  %p -> %08x\n", gp2x_screens[0], fb_paddr[0]);
	for (i = 1; i < FB_BUF_COUNT; i++)
	{
		fb_paddr[i] = fb_paddr[i-1] + 320*240*2;
		gp2x_screens[i] = (char *)gp2x_screens[i-1] + 320*240*2;
		FUNC6("  %p -> %08x\n", gp2x_screens[i], fb_paddr[i]);
	}
	fb_work_buf = 0;
	g_screen_ptr = gp2x_screens[0];

	gp2x_video_flip = gp2x_video_flip_;
	gp2x_video_flip2 = gp2x_video_flip2_;
	gp2x_video_changemode_ll = gp2x_video_changemode_ll_;
	gp2x_video_setpalette = gp2x_video_setpalette_;
	gp2x_video_RGB_setscaling = gp2x_video_RGB_setscaling_;
	gp2x_video_wait_vsync = gp2x_video_wait_vsync_;
}