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
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct waitq*) ; 
 int /*<<< orphan*/  FUNC2 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq*) ; 

kern_return_t FUNC7(struct waitq *waitq)
{
	kern_return_t kr = KERN_SUCCESS;

	if (!FUNC6(waitq))
		FUNC1("Invalid waitq: %p", waitq);

	FUNC0(!FUNC2(waitq));
	FUNC3(waitq);
	if (!FUNC6(waitq)) {
		FUNC5(waitq);
		return KERN_SUCCESS;
	}

	kr = FUNC4(waitq);
	/* waitq unlocked and set links deallocated */

	return kr;
}