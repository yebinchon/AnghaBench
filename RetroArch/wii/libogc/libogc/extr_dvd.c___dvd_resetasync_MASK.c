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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  dvdcbcallback ;
struct TYPE_2__ {int /*<<< orphan*/ * cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __dvd_cancelcallback ; 
 scalar_t__ __dvd_canceling ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* __dvd_executing ; 

void FUNC4(dvdcbcallback cb)
{
	u32 level;

	FUNC1(level);
	FUNC3();
	if(__dvd_canceling) __dvd_cancelcallback = cb;
	else {
		if(__dvd_executing) __dvd_executing->cb = NULL;
		FUNC0(cb);
	}
	FUNC2(level);
}