#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int s32 ;
typedef  scalar_t__ cond_t ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ object; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ cond_st ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  LWP_MUTEX_NULL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LWP_OBJTYPE_COND ; 
 int /*<<< orphan*/  LWP_STATES_WAITING_FOR_CONDVAR ; 
 int /*<<< orphan*/  LWP_THREADQ_MODEFIFO ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

s32 FUNC5(cond_t *cond)
{
	cond_st *ret;

	if(!cond) return -1;

	ret = FUNC2();
	if(!ret) return ENOMEM;

	ret->lock = LWP_MUTEX_NULL;
	FUNC4(&ret->wait_queue,LWP_THREADQ_MODEFIFO,LWP_STATES_WAITING_FOR_CONDVAR,ETIMEDOUT);

	*cond = (cond_t)(FUNC1(LWP_OBJTYPE_COND)|FUNC0(ret->object.id));
	FUNC3();

	return 0;
}