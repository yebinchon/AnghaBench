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
struct TYPE_2__ {int state; scalar_t__ image; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,scalar_t__) ; 
 TYPE_1__* active_cart ; 

__attribute__((used)) static void FUNC5(int main, int old_state)
{
	if (active_cart->state & 0x80) {
		FUNC0();
		FUNC2();
	}
	else {
		FUNC1();
		FUNC3();
		FUNC4(0x8000, 0x9fff, active_cart->image + active_cart->state * 0x2000);
		if (old_state & 0x80)
			FUNC4(0xa000, 0xbfff, active_cart->image + main);
	}
}