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
typedef  int /*<<< orphan*/  u_int32_t ;
struct pf_state {scalar_t__ timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ PFTM_UNLINKED ; 
 struct pf_state* FUNC1 (int /*<<< orphan*/ *) ; 
 struct pf_state* FUNC2 (struct pf_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry_list ; 
 int /*<<< orphan*/  FUNC3 (struct pf_state*) ; 
 int /*<<< orphan*/  pf_lock ; 
 scalar_t__ FUNC4 (struct pf_state*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pf_state*) ; 
 int /*<<< orphan*/  state_list ; 

void
FUNC7(u_int32_t maxcheck)
{
	static struct pf_state	*cur = NULL;
	struct pf_state		*next;

	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);

	while (maxcheck--) {
		/* wrap to start of list when we hit the end */
		if (cur == NULL) {
			cur = FUNC1(&state_list);
			if (cur == NULL)
				break;	/* list empty */
		}

		/* get next state, as cur may get deleted */
		next = FUNC2(cur, entry_list);

		if (cur->timeout == PFTM_UNLINKED) {
			FUNC3(cur);
		} else if (FUNC4(cur) <= FUNC5()) {
			/* unlink and free expired state */
			FUNC6(cur);
			FUNC3(cur);
		}
		cur = next;
	}
}