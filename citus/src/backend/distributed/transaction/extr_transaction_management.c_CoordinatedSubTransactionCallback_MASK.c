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
typedef  int SubXactEvent ;
typedef  int /*<<< orphan*/  SubTransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  SUBXACT_EVENT_ABORT_SUB 131 
#define  SUBXACT_EVENT_COMMIT_SUB 130 
#define  SUBXACT_EVENT_PRE_COMMIT_SUB 129 
#define  SUBXACT_EVENT_START_SUB 128 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(SubXactEvent event, SubTransactionId subId,
								  SubTransactionId parentSubid, void *arg)
{
	switch (event)
	{
		/*
		 * Our subtransaction stack should be consistent with postgres' internal
		 * transaction stack. In case of subxact begin, postgres calls our
		 * callback after it has pushed the transaction into stack, so we have to
		 * do the same even if worker commands fail, so we PushSubXact() first.
		 * In case of subxact commit, callback is called before pushing subxact to
		 * the postgres transaction stack, so we call PopSubXact() after making sure
		 * worker commands didn't fail. Otherwise, Postgres would roll back that
		 * would cause us to call PopSubXact again.
		 */
		case SUBXACT_EVENT_START_SUB:
		{
			FUNC5(subId);
			if (FUNC3())
			{
				FUNC0(subId);
			}
			break;
		}

		case SUBXACT_EVENT_COMMIT_SUB:
		{
			if (FUNC3())
			{
				FUNC1(subId);
			}
			FUNC4(subId);
			break;
		}

		case SUBXACT_EVENT_ABORT_SUB:
		{
			if (FUNC3())
			{
				FUNC2(subId);
			}
			FUNC4(subId);

			FUNC6();
			break;
		}

		case SUBXACT_EVENT_PRE_COMMIT_SUB:
		{
			/* nothing to do */
			break;
		}
	}
}