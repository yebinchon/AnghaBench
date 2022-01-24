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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t s32 ;
struct TYPE_3__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ dvdcmdblk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * __dvd_waitingqueue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32 FUNC3(s32 prio,dvdcmdblk *block)
{
	u32 level;
	FUNC0(level);
	FUNC2(&__dvd_waitingqueue[prio],&block->node);
	FUNC1(level);
	return 1;
}