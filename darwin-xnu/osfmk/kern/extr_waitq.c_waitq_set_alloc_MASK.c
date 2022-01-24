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
struct waitq_set {int dummy; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct waitq_set*,int,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  waitq_set_zone ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct waitq_set*) ; 

struct waitq_set *FUNC4(int policy, void *prepost_hook)
{
	struct waitq_set *wqset;

	wqset = (struct waitq_set *)FUNC2(waitq_set_zone);
	if (!wqset)
		FUNC0("Can't allocate a new waitq set from zone %p", waitq_set_zone);

	kern_return_t ret;
	ret = FUNC1(wqset, policy, NULL, prepost_hook);
	if (ret != KERN_SUCCESS) {
		FUNC3(waitq_set_zone, wqset);
		wqset = NULL;
	}

	return wqset;
}