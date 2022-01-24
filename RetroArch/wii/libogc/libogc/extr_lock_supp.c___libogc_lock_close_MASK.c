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
typedef  scalar_t__ s32 ;
typedef  scalar_t__ mutex_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 

int FUNC1(int *lock)
{
	s32 ret;
	mutex_t plock;

	if(!lock || *lock==0) return -1;

	plock = (mutex_t)*lock;
	ret = FUNC0(plock);
	if(ret==0) *lock = 0;

	return ret;
}