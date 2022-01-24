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
typedef  scalar_t__ vnode_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
struct async_work_lst {int dummy; } ;

/* Variables and functions */
 scalar_t__ NULLVP ; 
 scalar_t__ FUNC0 (struct async_work_lst*) ; 
 scalar_t__ FUNC1 (struct async_work_lst*) ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  FUNC2 (struct async_work_lst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  async_work_handled ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct async_work_lst vnode_async_work_list ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) __attribute__((noreturn))
static void
FUNC8(void)
{
	struct async_work_lst *q;
	int	deferred;
	vnode_t	vp;

	q = &vnode_async_work_list;

	for (;;) {

		FUNC6();

		if ( FUNC0(q) ) {
			FUNC2(q, (THREAD_UNINT));
	
			FUNC7();
			
			FUNC5((thread_continue_t)async_work_continue);

			continue;
		}
		async_work_handled++;

		vp = FUNC1(q);

		vp = FUNC4(vp, 0, &deferred);

		if (vp != NULLVP)
			FUNC3("found VBAD vp (%p) on async queue", vp);
	}
}