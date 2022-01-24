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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 

__attribute__((used)) static u32 FUNC3()
{
	u32 ticks = FUNC2();
	u32 val = 0,cnt = 0,shift = 1;

	FUNC1(ticks);
	val = (FUNC0()&0x1f)+1;

	do {
		ticks = FUNC2();
		val = ticks<<shift;
		shift++;
		if(shift>16) shift = 1;
		FUNC1(val);
		val = (FUNC0()&0x1f)+1;
		cnt++;
	}while(val<4 && cnt<10);
	if(val<4) val = 4;

	return val;

}