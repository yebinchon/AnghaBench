#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_3__ {int /*<<< orphan*/  connectionStateHash; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  TYPE_1__ CitusCopyDestReceiver ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC7(TupleTableSlot *slot, DestReceiver *dest)
{
	bool result = false;
	CitusCopyDestReceiver *copyDest = (CitusCopyDestReceiver *) dest;

	FUNC5();
	{
		result = FUNC0(slot, copyDest);
	}
	FUNC2();
	{
		/*
		 * We might be able to recover from errors with ROLLBACK TO SAVEPOINT,
		 * so unclaim the connections before throwing errors.
		 */
		List *connectionStateList = FUNC1(copyDest->connectionStateHash);
		FUNC6(connectionStateList);

		FUNC4();
	}
	FUNC3();

	return result;
}