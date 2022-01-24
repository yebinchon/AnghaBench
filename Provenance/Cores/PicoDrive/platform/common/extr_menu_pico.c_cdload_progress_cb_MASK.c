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
 int cdload_called ; 
 scalar_t__ g_menuscreen_ptr ; 
 int g_menuscreen_w ; 
 int me_sfont_h ; 
 int /*<<< orphan*/  FUNC0 (unsigned short*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,char const*,int) ; 

__attribute__((used)) static void FUNC4(const char *fname, int percent)
{
	int ln, len = percent * g_menuscreen_w / 100;
	unsigned short *dst;

	FUNC1(0, 1);
	dst = (unsigned short *)g_menuscreen_ptr + g_menuscreen_w * me_sfont_h * 2;
	FUNC0(dst, 0xff, g_menuscreen_w * (me_sfont_h - 2) * 2);

	FUNC3(1, 3 * me_sfont_h, "Processing CD image / MP3s", 0xffff);
	FUNC3(1, 4 * me_sfont_h, fname, 0xffff);
	dst += g_menuscreen_w * me_sfont_h * 3;

	if (len > g_menuscreen_w)
		len = g_menuscreen_w;

	for (ln = (me_sfont_h - 2); ln > 0; ln--, dst += g_menuscreen_w)
		FUNC0(dst, 0xff, len * 2);
	FUNC2();

	cdload_called = 1;
}