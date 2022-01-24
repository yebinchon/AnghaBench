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
struct waitq_set {int /*<<< orphan*/  wqset_q; } ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq_set*) ; 
 int FUNC4 (struct waitq_set*) ; 

kern_return_t FUNC5(struct waitq_set *wqset)
{
	FUNC0(FUNC4(wqset));
	FUNC0(!FUNC1(&wqset->wqset_q));

	FUNC2(wqset);
	return FUNC3(wqset);
	/* wqset unlocked and set links and preposts deallocated */
}