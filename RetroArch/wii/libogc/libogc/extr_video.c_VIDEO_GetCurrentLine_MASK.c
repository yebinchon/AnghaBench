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
typedef  int u32 ;
struct TYPE_2__ {int nhlines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 TYPE_1__* currTiming ; 

u32 FUNC3()
{
	u32 level,curr_hl = 0;

	FUNC0(level);
	curr_hl = FUNC2();
	FUNC1(level);

	if(curr_hl>=currTiming->nhlines) curr_hl -=currTiming->nhlines;
	curr_hl >>= 1;

	return curr_hl;
}