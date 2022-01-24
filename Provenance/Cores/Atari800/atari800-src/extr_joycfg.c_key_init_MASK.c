#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pm_offset; int /*<<< orphan*/  pm_selector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ hi ; 
 scalar_t__ key_handler ; 
 scalar_t__ lo ; 
 TYPE_1__ new_key_handler ; 
 int /*<<< orphan*/  old_key_handler ; 

void FUNC4(void)
{
        lo=hi=0;
	new_key_handler.pm_offset = (int) key_handler;
	new_key_handler.pm_selector = FUNC3();
	FUNC1(0x9, &old_key_handler);
	FUNC0(&new_key_handler);
	FUNC2(0x9, &new_key_handler);
}