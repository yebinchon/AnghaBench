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
typedef  scalar_t__ UINT64 ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ last_manual_tick ; 
 scalar_t__ manual_tick_add_value ; 
 int /*<<< orphan*/  tick_manual_lock ; 

UINT FUNC3()
{
	UINT64 ret;
	FUNC0(tick_manual_lock);
	{
		ret = FUNC1();

		if (last_manual_tick != 0 && (last_manual_tick > ret))
		{
			manual_tick_add_value += (last_manual_tick - ret);
		}

		last_manual_tick = ret;
	}
	FUNC2(tick_manual_lock);

	return (UINT)(ret + manual_tick_add_value);
}