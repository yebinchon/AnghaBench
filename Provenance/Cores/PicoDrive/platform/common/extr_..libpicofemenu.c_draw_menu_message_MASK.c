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
 int g_menuscreen_h ; 
 int g_menuscreen_w ; 
 int me_mfont_h ; 
 int me_mfont_w ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,char const*) ; 

__attribute__((used)) static void FUNC4(const char *msg, void (*draw_more)(void))
{
	int x, y, h, w, wt;
	const char *p;

	p = msg;
	for (h = 1, w = 0; *p != 0; h++) {
		for (wt = 0; *p != 0 && *p != '\n'; p++)
			wt++;

		if (wt > w)
			w = wt;
		if (*p == 0)
			break;
		p++;
	}

	x = g_menuscreen_w / 2 - w * me_mfont_w / 2;
	y = g_menuscreen_h / 2 - h * me_mfont_h / 2;
	if (x < 0) x = 0;
	if (y < 0) y = 0;

	FUNC0(1, 0);

	for (p = msg; *p != 0 && y <= g_menuscreen_h - me_mfont_h; y += me_mfont_h) {
		FUNC3(x, y, p);

		for (; *p != 0 && *p != '\n'; p++)
			;
		if (*p != 0)
			p++;
	}

	FUNC2();

	if (draw_more != NULL)
		draw_more();

	FUNC1();
}