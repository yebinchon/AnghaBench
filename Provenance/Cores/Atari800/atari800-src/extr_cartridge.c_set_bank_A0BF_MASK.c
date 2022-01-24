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
 int /*<<< orphan*/  FUNC2 (int,int,scalar_t__) ; 
 TYPE_1__* active_cart ; 

__attribute__((used)) static void FUNC3(int disable_mask, int bank_mask)
{
	if (active_cart->state & disable_mask)
		FUNC0();
	else {
		FUNC1();
		FUNC2(0xa000, 0xbfff, active_cart->image + (active_cart->state & bank_mask) * 0x2000);
	}
}