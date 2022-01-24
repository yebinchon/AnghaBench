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

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_ACTIVE_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ XACT_MODIFICATION_NONE ; 
 scalar_t__ XactModificationLevel ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3()
{
	if (XactModificationLevel > XACT_MODIFICATION_NONE)
	{
		FUNC0(ERROR, (FUNC1(ERRCODE_ACTIVE_SQL_TRANSACTION),
						FUNC2("cannot open new connections after the first modification "
							   "command within a transaction")));
	}
}