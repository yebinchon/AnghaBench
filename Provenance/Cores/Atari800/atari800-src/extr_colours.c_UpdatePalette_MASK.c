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
struct TYPE_2__ {int /*<<< orphan*/  adjust; scalar_t__ loaded; } ;

/* Variables and functions */
 scalar_t__ Atari800_TV_NTSC ; 
 scalar_t__ Atari800_tv_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* Colours_external ; 
 int /*<<< orphan*/  Colours_table ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	if (Colours_external->loaded && !Colours_external->adjust)
		FUNC2();
	else if (Atari800_tv_mode == Atari800_TV_NTSC)
		FUNC0(Colours_table);
	else /* PAL */
		FUNC1(Colours_table);
}