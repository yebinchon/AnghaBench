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
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int t_kpc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int TASK_KPC_FORCED_ALL_CTRS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static boolean_t
FUNC1(task_t task)
{
	FUNC0(task);
	return task->t_kpc & TASK_KPC_FORCED_ALL_CTRS ? TRUE : FALSE;
}