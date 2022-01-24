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
typedef  int s32 ;
typedef  int /*<<< orphan*/  cond_t ;
struct TYPE_4__ {int /*<<< orphan*/  wait_queue; } ;
typedef  TYPE_1__ cond_st ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

s32 FUNC4(cond_t cond)
{
	cond_st *ptr = FUNC1(cond);
	if(!ptr) return -1;

	if(FUNC3(&ptr->wait_queue)) {
		FUNC2();
		return EBUSY;
	}
	FUNC2();

	FUNC0(ptr);
	return 0;
}