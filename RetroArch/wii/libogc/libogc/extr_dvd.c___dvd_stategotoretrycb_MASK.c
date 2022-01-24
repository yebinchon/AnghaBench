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
typedef  int s32 ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int __dvd_currcmd ; 
 TYPE_1__* __dvd_executing ; 
 scalar_t__ __dvd_internalretries ; 
 int __dvd_resetrequired ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(s32 result)
{
	if(result==0x0010) {
		__dvd_executing->state = -1;
		FUNC3();
		return;
	}
	if(result&0x0002) {
		__dvd_executing->state = -1;
		FUNC1(0x01234567);
		return;
	}
	if(result==0x0001) {
		__dvd_internalretries = 0;
		if(__dvd_currcmd==0x0004 || __dvd_currcmd==0x0005
			|| __dvd_currcmd==0x000d || __dvd_currcmd==0x000f) {
			__dvd_resetrequired = 1;
			if(FUNC0(2)) return;

			__dvd_executing->state = 11;
			FUNC2();
		}
	}
}