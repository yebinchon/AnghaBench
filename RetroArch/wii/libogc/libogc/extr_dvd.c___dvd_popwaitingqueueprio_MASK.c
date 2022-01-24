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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t s32 ;
typedef  int /*<<< orphan*/  dvdcmdblk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * __dvd_waitingqueue ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static dvdcmdblk* FUNC3(s32 prio)
{
	u32 level;
	dvdcmdblk *ret = NULL;
	FUNC0(level);
	ret = (dvdcmdblk*)FUNC2(&__dvd_waitingqueue[prio]);
	FUNC1(level);
	return ret;
}