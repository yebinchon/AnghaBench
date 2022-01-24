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
struct TYPE_3__ {scalar_t__ num; int /*<<< orphan*/  a; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ CHECK_THREAD_3 ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/ * FUNC0 (void (*) (int /*<<< orphan*/ *,void*),TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(THREAD *thread, void *param)
{
	CHECK_THREAD_3 *c = (CHECK_THREAD_3 *)param;
	THREAD *t;

	if (c->num == 0)
	{
		return;
	}
	c->num--;
	c->a++;

	t = FUNC0(CheckThread3, c);
	FUNC2(t, INFINITE);
	FUNC1(t);
}