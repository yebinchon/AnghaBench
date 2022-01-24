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
struct TYPE_2__ {int active; char* name; } ;

/* Variables and functions */
 int PicoPatchCount ; 
 TYPE_1__* PicoPatches ; 
 int g_menuscreen_h ; 
 int me_sfont_h ; 
 int me_sfont_w ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*) ; 

__attribute__((used)) static void FUNC4(int sel)
{
	int max_cnt, start, i, pos, active;

	max_cnt = g_menuscreen_h / me_sfont_h;
	start = max_cnt / 2 - sel;

	FUNC0(1, 0);

	for (i = 0; i < PicoPatchCount; i++) {
		pos = start + i;
		if (pos < 0) continue;
		if (pos >= max_cnt) break;
		active = PicoPatches[i].active;
		FUNC2(14,                pos * me_sfont_h, active ? "ON " : "OFF", active ? 0xfff6 : 0xffff);
		FUNC2(14 + me_sfont_w*4, pos * me_sfont_h, PicoPatches[i].name,    active ? 0xfff6 : 0xffff);
	}
	pos = start + i;
	if (pos < max_cnt)
		FUNC2(14, pos * me_sfont_h, "done", 0xffff);

	FUNC3(5, max_cnt / 2 * me_sfont_h, ">");
	FUNC1();
}