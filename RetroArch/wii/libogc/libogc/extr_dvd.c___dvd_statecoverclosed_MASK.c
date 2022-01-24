#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* cb ) (int,TYPE_1__*) ;} ;
typedef  TYPE_1__ dvdcmdblk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int __dvd_currcmd ; 
 TYPE_1__ __dvd_dummycmdblk ; 
 TYPE_1__* __dvd_executing ; 
 int /*<<< orphan*/  __dvd_extensionsenabled ; 
 int /*<<< orphan*/  __dvd_statecoverclosed_spinupcb ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*) ; 

void FUNC4()
{
	dvdcmdblk *blk;
	if(__dvd_currcmd==0x0004 || __dvd_currcmd==0x0005
		|| __dvd_currcmd==0x000d || __dvd_currcmd==0x000f
		|| __dvd_currcmd==0x0010) {
		FUNC1();
		blk = __dvd_executing;
		__dvd_executing = &__dvd_dummycmdblk;
		if(blk->cb) blk->cb(-4,blk);
		FUNC2();
	} else {
		__dvd_extensionsenabled = TRUE;
		FUNC0(__dvd_statecoverclosed_spinupcb);
	}
}