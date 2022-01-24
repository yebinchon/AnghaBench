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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int hwLockTimeOut ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,struct waitq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq*) ; 
 scalar_t__ FUNC8 (struct waitq*,int) ; 

void FUNC9(struct waitq *wq)
{
	if (FUNC0(FUNC8(wq,
				    hwLockTimeOut * 2) == 0)) {
		boolean_t wql_acquired = FALSE;

		while (FUNC3()) {
			FUNC4();
			wql_acquired = FUNC8(wq,
						  hwLockTimeOut * 2);
			if (wql_acquired)
				break;
		}
		if (wql_acquired == FALSE)
			FUNC5("waitq deadlock - waitq=%p, cpu=%d\n",
			      wq, FUNC2());
	}
#if defined(__x86_64__)
	FUNC6(FALSE);
#endif
	FUNC1(FUNC7(wq));
}