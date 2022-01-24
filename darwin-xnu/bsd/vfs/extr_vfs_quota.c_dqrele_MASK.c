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
struct dquot {int dq_cnt; int dq_flags; } ;

/* Variables and functions */
 int DQ_MOD ; 
 struct dquot* NODQUOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct dquot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dq_freelist ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dquot*) ; 
 int /*<<< orphan*/  dqfreelist ; 
 int /*<<< orphan*/  FUNC4 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC5 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC6 (struct dquot*) ; 

void
FUNC7(struct dquot *dq)
{

	if (dq == NODQUOT)
		return;
	FUNC4(dq);

	if (dq->dq_cnt > 1) {
		dq->dq_cnt--;

		FUNC6(dq);
		return;
	}
	if (dq->dq_flags & DQ_MOD)
		(void) FUNC5(dq);
	dq->dq_cnt--;

	FUNC1();
	FUNC0(&dqfreelist, dq, dq_freelist);
        FUNC3(dq);
	FUNC2();
}