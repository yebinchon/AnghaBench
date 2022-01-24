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
typedef  int /*<<< orphan*/  u32 ;
typedef  int s32 ;
struct TYPE_6__ {int state; int /*<<< orphan*/  (* cb ) (int,TYPE_1__*) ;} ;
typedef  TYPE_1__ dvdcmdblk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ __dvd_canceling ; 
 TYPE_1__ __dvd_dummycmdblk ; 
 TYPE_1__* __dvd_executing ; 
 int /*<<< orphan*/  __dvd_resumefromhere ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 

__attribute__((used)) static s32 FUNC3(u32 cancelpt)
{
	dvdcmdblk *block;

	if(__dvd_canceling) {
		__dvd_resumefromhere = cancelpt;
		__dvd_canceling = 0;

		block = __dvd_executing;
		__dvd_executing = &__dvd_dummycmdblk;

		block->state = 10;
		if(block->cb) block->cb(-3,block);
		if(&__dvd_cancelcallback) FUNC0(0,block);

		FUNC1();
		return 1;
	}
	return 0;
}