#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
struct TYPE_5__ {int /*<<< orphan*/ * p_comm; } ;

/* Variables and functions */
 TYPE_1__* PROC_NULL ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

void
FUNC3(int pid, char * buf, int size)
{
	proc_t p;

	if ((p = FUNC0(pid)) != PROC_NULL) {
		FUNC2(buf, &p->p_comm[0], size);
		FUNC1(p);
	}
}