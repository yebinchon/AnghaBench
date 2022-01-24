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
 int /*<<< orphan*/  READPNG_BG ; 
 int /*<<< orphan*/  g_menubg_ptr ; 
 int g_menuscreen_h ; 
 int g_menuscreen_w ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(int is_rom_loaded)
{
	if (is_rom_loaded)
	{
		FUNC0(0);
	}
	else
	{
		int pos;
		char buff[256];
		pos = FUNC2(buff, 256);
		FUNC5(buff + pos, "background.png");

		// should really only happen once, on startup..
		if (FUNC4(g_menubg_ptr, buff, READPNG_BG,
						g_menuscreen_w, g_menuscreen_h) < 0)
			FUNC1(g_menubg_ptr, 0, g_menuscreen_w * g_menuscreen_h * 2);
	}

	FUNC3(is_rom_loaded);
}