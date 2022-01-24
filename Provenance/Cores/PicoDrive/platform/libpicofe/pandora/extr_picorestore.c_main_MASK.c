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
struct omapfb_plane_info {scalar_t__ yoffset; scalar_t__ size; scalar_t__ enabled; } ;
struct omapfb_mem_info {scalar_t__ yoffset; scalar_t__ size; scalar_t__ enabled; } ;
struct fb_var_screeninfo {scalar_t__ yoffset; scalar_t__ size; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBIOGET_VSCREENINFO ; 
 int /*<<< orphan*/  FBIOPAN_DISPLAY ; 
 int /*<<< orphan*/  KDSETMODE ; 
 struct omapfb_plane_info* KD_TEXT ; 
 int /*<<< orphan*/  OMAPFB_QUERY_MEM ; 
 int /*<<< orphan*/  OMAPFB_QUERY_PLANE ; 
 int /*<<< orphan*/  OMAPFB_SETUP_MEM ; 
 int /*<<< orphan*/  OMAPFB_SETUP_PLANE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct omapfb_plane_info*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5()
{
	struct fb_var_screeninfo fbvar;
	struct omapfb_plane_info pi;
	struct omapfb_mem_info mi;
	int ret, fbdev, kbdfd;

	fbdev = FUNC2("/dev/fb0", O_RDWR);
	if (fbdev == -1) {
		FUNC3("open fb0");
		goto end_fb0;
	}

	ret = FUNC1(fbdev, FBIOGET_VSCREENINFO, &fbvar);
	if (ret == -1) {
		FUNC3("FBIOGET_VSCREENINFO ioctl");
		goto end_fb0;
	}

	if (fbvar.yoffset != 0) {
		FUNC4("fixing yoffset.. ");
		fbvar.yoffset = 0;
		ret = FUNC1(fbdev, FBIOPAN_DISPLAY, &fbvar);
		if (ret < 0)
			FUNC3("ioctl FBIOPAN_DISPLAY");
		else
			FUNC4("ok\n");
	}

end_fb0:
	if (fbdev >= 0)
		FUNC0(fbdev);

	fbdev = FUNC2("/dev/fb1", O_RDWR);
	if (fbdev == -1) {
		FUNC3("open fb1");
		goto end_fb1;
	}

	ret  = FUNC1(fbdev, OMAPFB_QUERY_PLANE, &pi);
	ret |= FUNC1(fbdev, OMAPFB_QUERY_MEM, &mi);
	if (ret != 0)
		FUNC3("QUERY_*");

	pi.enabled = 0;
	ret = FUNC1(fbdev, OMAPFB_SETUP_PLANE, &pi);
	if (ret != 0)
		FUNC3("SETUP_PLANE");

	mi.size = 0;
	ret = FUNC1(fbdev, OMAPFB_SETUP_MEM, &mi);
	if (ret != 0)
		FUNC3("SETUP_MEM");

end_fb1:
	if (fbdev >= 0)
		FUNC0(fbdev);

	kbdfd = FUNC2("/dev/tty", O_RDWR);
	if (kbdfd == -1) {
		FUNC3("open /dev/tty");
		return 1;
	}

	if (FUNC1(kbdfd, KDSETMODE, KD_TEXT) == -1)
		FUNC3("KDSETMODE KD_TEXT");

	FUNC0(kbdfd);

	return 0;
}