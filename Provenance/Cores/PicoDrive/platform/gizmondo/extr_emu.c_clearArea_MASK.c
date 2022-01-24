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
struct TYPE_2__ {int EmuOpt; } ;

/* Variables and functions */
 TYPE_1__ currentConfig ; 
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int* giz_screen ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(int full)
{
	if (giz_screen == NULL)
		giz_screen = FUNC0(1);
	if (full) FUNC2(giz_screen, 0, 320*240*2/4);
	else      FUNC2((int *)((char *)giz_screen + 321*232*2), 0, 321*8*2/4);

	if (currentConfig.EmuOpt&0x8000) {
		FUNC1();
		giz_screen = FUNC0(0);
		if (full) FUNC2(giz_screen, 0, 320*240*2/4);
		else      FUNC2((int *)((char *)giz_screen + 321*232*2), 0, 321*8*2/4);
	}
}