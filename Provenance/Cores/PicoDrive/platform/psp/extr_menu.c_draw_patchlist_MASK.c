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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*) ; 

__attribute__((used)) static void FUNC4(int sel)
{
	int start, i, pos, active;

	start = 13 - sel;

	FUNC0();

	for (i = 0; i < PicoPatchCount; i++) {
		pos = start + i;
		if (pos < 0)  continue;
		if (pos > 26) break;
		active = PicoPatches[i].active;
		FUNC2(14,     pos*10, active ? "ON " : "OFF", active ? 0xfff6 : 0xffff, 3);
		FUNC2(14+6*4, pos*10, PicoPatches[i].name, active ? 0xfff6 : 0xffff, 53-6);
	}
	pos = start + i;
	if (pos < 27) FUNC2(14, pos*10, "done", 0xffff, 4);

	FUNC3(5, 130, ">");
	FUNC1();
}