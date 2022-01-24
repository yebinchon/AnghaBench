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
typedef  int s32 ;
struct TYPE_4__ {int state; int txdsize; } ;
typedef  TYPE_1__ dvdcmdblk ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __dvd_motorcntrlsynccb ; 
 int /*<<< orphan*/  __dvd_wait_queue ; 

s32 FUNC4(dvdcmdblk *block,u32 cmd)
{
	s32 ret,state;
	u32 level;
	ret = FUNC0(block,cmd,__dvd_motorcntrlsynccb);

	FUNC2(level);
	do {
		state = block->state;
		if(state==0 || state==-1) ret = -1;
		else if(state==10) ret = block->txdsize;
		else FUNC1(__dvd_wait_queue);
	} while(state!=0 && state!=-1 && state!=10);
	FUNC3(level);

	return ret;
}