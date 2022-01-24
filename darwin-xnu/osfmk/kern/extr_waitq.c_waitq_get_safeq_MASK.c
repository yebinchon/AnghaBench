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
 struct waitq* FUNC1 (struct waitq*) ; 
 struct waitq* FUNC2 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*) ; 
 scalar_t__ FUNC4 (struct waitq*) ; 

struct waitq * FUNC5(struct waitq *waitq)
{
	struct waitq *safeq;

	/* Check if it's a port waitq */
	if (FUNC4(waitq)) {
		FUNC0(!FUNC3(waitq));
		safeq = FUNC2(waitq);
	} else {
		safeq = FUNC1(waitq);
	}
	return safeq;
}