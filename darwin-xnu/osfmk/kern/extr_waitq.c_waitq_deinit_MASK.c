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
struct waitq {scalar_t__ waitq_isvalid; } ;
typedef  int /*<<< orphan*/  spl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*) ; 
 scalar_t__ FUNC4 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC9 (struct waitq*) ; 

void FUNC10(struct waitq *waitq)
{
	spl_t s;

	if (!waitq || !FUNC5(waitq))
		return;

	if (FUNC4(waitq))
		s = FUNC1();
	FUNC6(waitq);
	if (!FUNC9(waitq)) {
		FUNC8(waitq);
		if (FUNC4(waitq))
			FUNC2(s);
		return;
	}

	waitq->waitq_isvalid = 0;

	if (!FUNC4(waitq)) {
		FUNC7(waitq);
		/* waitq unlocked and set links deallocated */
	} else {
		FUNC8(waitq);
		FUNC2(s);
	}

	FUNC0(FUNC3(waitq));
}