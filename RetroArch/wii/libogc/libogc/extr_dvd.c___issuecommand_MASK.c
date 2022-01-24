#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_4__ {int cmd; int state; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ dvdcmdblk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ __dvd_autoinvalidation ; 
 int /*<<< orphan*/  __dvd_executing ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

s32 FUNC5(s32 prio,dvdcmdblk *block)
{
	s32 ret;
	u32 level;
	if(__dvd_autoinvalidation &&
		(block->cmd==0x0001 || block->cmd==0x00004
		|| block->cmd==0x0005 || block->cmd==0x000e)) FUNC0(block->buf,block->len);

	FUNC1(level);
	block->state = 0x0002;
	ret = FUNC3(prio,block);
	if(!__dvd_executing) FUNC4();
	FUNC2(level);
	return ret;
}