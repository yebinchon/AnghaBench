#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ counter_bias; } ;
typedef  TYPE_1__ syssram ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 int TB_TIMER_CLOCK ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

u64 FUNC4()
{
	u64 current_time = 0;
    u32 gmtime =0;
    FUNC1(&gmtime);
    current_time = gmtime;
#ifdef HW_RVL
	u32 bias;
	if (CONF_GetCounterBias(&bias) >= 0)
		current_time += bias;
#else
	syssram* sram = FUNC2();
	current_time += sram->counter_bias;
	FUNC3(0);
#endif
	return (TB_TIMER_CLOCK * 1000) * current_time;
}