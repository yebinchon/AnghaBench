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
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static TransactionId
FUNC2(HeapTuple tuple, TupleDesc tupdesc, int colIndex)
{
	Datum resultDatum;
	bool isNull = false;

	resultDatum = FUNC1(tuple, tupdesc, colIndex, &isNull);
	if (isNull)
	{
		/*
		 * We'd show NULL if user hits the max transaction id, but that should be
		 * one of the minor problems they'd probably hit.
		 */
		return PG_UINT32_MAX;
	}

	return FUNC0(resultDatum);
}