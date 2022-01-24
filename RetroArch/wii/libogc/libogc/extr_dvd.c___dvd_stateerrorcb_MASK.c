#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int s32 ;
struct TYPE_6__ {int state; int /*<<< orphan*/  (* cb ) (int,TYPE_1__*) ;} ;
typedef  TYPE_1__ dvdcmdblk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ __dvd_canceling ; 
 TYPE_1__ __dvd_dummycmdblk ; 
 TYPE_1__* __dvd_executing ; 
 int __dvd_fatalerror ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(s32 result)
{
	dvdcmdblk *block;
	if(result==0x0010) {
		__dvd_executing->state = -1;
		FUNC2();
		return;
	}

	__dvd_fatalerror = 1;
	block = __dvd_executing;
	__dvd_executing = &__dvd_dummycmdblk;
	if(block->cb) block->cb(-1,block);
	if(__dvd_canceling) {
		__dvd_canceling = 0;
		if(&__dvd_cancelcallback) FUNC0(0,block);
	}
	FUNC1();
}