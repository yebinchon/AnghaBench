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
typedef  int s32 ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 TYPE_1__* __dvd_executing ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int* _diReg ; 

__attribute__((used)) static void FUNC2(s32 result)
{
	u32 val;

	if(result==0x0010) {
		__dvd_executing->state = -1;
		FUNC1();
		return;
	}

	__dvd_executing->state = -1;
	if(result&0x0002) FUNC0(0x01234567);
	else {
		val = _diReg[8];
		FUNC0(val);
	}
}