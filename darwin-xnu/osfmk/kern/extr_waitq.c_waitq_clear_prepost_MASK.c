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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC2 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*) ; 
 int FUNC5 (struct waitq*) ; 

void FUNC6(struct waitq *waitq)
{
	FUNC0(FUNC5(waitq));
	FUNC0(!FUNC2(waitq));

	FUNC3(waitq);
	/* it doesn't matter to us if the lock is dropped here */
	(void)FUNC1(waitq);
	FUNC4(waitq);
}