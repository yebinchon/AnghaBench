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
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  CustomScanState ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  insertSelectExecutorLevel ; 

TupleTableSlot *
FUNC5(CustomScanState *node)
{
	TupleTableSlot *result = NULL;
	insertSelectExecutorLevel++;

	FUNC4();
	{
		result = FUNC0(node);
	}
	FUNC1();
	{
		insertSelectExecutorLevel--;
		FUNC3();
	}
	FUNC2();

	insertSelectExecutorLevel--;
	return result;
}