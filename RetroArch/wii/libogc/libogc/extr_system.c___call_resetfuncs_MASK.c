#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ next; } ;
struct TYPE_7__ {scalar_t__ (* func ) (int) ;TYPE_1__ node; } ;
typedef  TYPE_2__ sys_resetinfo ;
typedef  int s32 ;
struct TYPE_8__ {scalar_t__ first; } ;
typedef  TYPE_3__ lwp_queue ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_3__ sys_reset_func_queue ; 

__attribute__((used)) static s32 FUNC3(s32 final)
{
	s32 ret;
	sys_resetinfo *info;
	lwp_queue *header = &sys_reset_func_queue;

	ret = 1;
	info = (sys_resetinfo*)header->first;
	while(info!=(sys_resetinfo*)FUNC0(header)) {
		if(info->func && info->func(final)==0) ret |= (ret<<1);
		info = (sys_resetinfo*)info->node.next;
	}
	if(FUNC1()==0) ret |= (ret<<1);

	if(ret&~0x01) return 0;
	return 1;
}