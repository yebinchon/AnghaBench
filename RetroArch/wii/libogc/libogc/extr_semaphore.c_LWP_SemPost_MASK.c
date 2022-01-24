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
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {TYPE_1__ object; int /*<<< orphan*/  sema; } ;
typedef  TYPE_2__ sema_st ;
typedef  int /*<<< orphan*/  sem_t ;
typedef  int s32 ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

s32 FUNC3(sem_t sem)
{
	sema_st *lwp_sem = FUNC0(sem);
	if(!lwp_sem) return -1;

	FUNC1(&lwp_sem->sema,lwp_sem->object.id);
	FUNC2();

	return 0;
}