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
struct TYPE_4__ {int /*<<< orphan*/  sema; } ;
typedef  TYPE_1__ sema_st ;
typedef  int /*<<< orphan*/  sem_t ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

s32 FUNC4(sem_t sem)
{
	sema_st *lwp_sem = FUNC2(sem);
	if(!lwp_sem) return -1;

	FUNC0(&lwp_sem->sema,-1);
	FUNC3();

	FUNC1(lwp_sem);
	return 0;
}