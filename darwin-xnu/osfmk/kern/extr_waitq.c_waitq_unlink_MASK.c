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
struct waitq_set {int /*<<< orphan*/  wqset_id; } ;
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ FUNC0 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*,struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq*) ; 
 int FUNC7 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC8 (char*,void*,int /*<<< orphan*/ ) ; 

kern_return_t FUNC9(struct waitq *waitq, struct waitq_set *wqset)
{
	kern_return_t kr = KERN_SUCCESS;

	FUNC1(FUNC7(wqset));

	/*
	 * we allow the waitq to be invalid because the caller may be trying
	 * to clear out old/dirty state
	 */
	if (!FUNC6(waitq))
		return KERN_INVALID_ARGUMENT;

	FUNC8("unlink waitq %p from set 0x%llx",
		(void *)FUNC0(waitq), wqset->wqset_id);

	FUNC1(!FUNC2(waitq));

	FUNC3(waitq);

	kr = FUNC4(waitq, wqset);

	FUNC5(waitq);
	return kr;
}