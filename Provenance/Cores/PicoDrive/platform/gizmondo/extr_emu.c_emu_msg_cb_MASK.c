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
 scalar_t__ FUNC0 () ; 
 TYPE_1__ currentConfig ; 
 int /*<<< orphan*/  FUNC1 (int,int,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * giz_screen ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ noticeMsgTime ; 
 int reset_timing ; 

__attribute__((used)) static void FUNC5(const char *msg)
{
	if (giz_screen != NULL) FUNC3();
	giz_screen = FUNC2(1);

	FUNC4((int *)((char *)giz_screen + 321*232*2), 0, 321*8*2/4);
	FUNC1(4, 232, msg);
	noticeMsgTime = FUNC0() - 2000;

	/* assumption: emu_msg_cb gets called only when something slow is about to happen */
	reset_timing = 1;

	FUNC3();
	giz_screen = FUNC2((currentConfig.EmuOpt&0x8000) ? 0 : 1);
}