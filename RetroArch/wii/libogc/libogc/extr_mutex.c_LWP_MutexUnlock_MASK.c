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
typedef  int u32 ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  mutex_t ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ mutex_st ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

s32 FUNC3(mutex_t mutex)
{
	u32 ret;
	mutex_st *lock;

	lock = FUNC0(mutex);
	if(!lock) return -1;

	ret = FUNC1(&lock->mutex);
	FUNC2();

	return ret;
}