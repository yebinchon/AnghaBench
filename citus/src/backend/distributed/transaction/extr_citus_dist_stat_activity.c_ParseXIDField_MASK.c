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
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_UINT32_MAX ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  xidin ; 

__attribute__((used)) static TransactionId
FUNC5(PGresult *result, int rowIndex, int colIndex)
{
	char *resultString = NULL;
	Datum resultStringDatum = 0;
	Datum XIDDatum = 0;

	if (FUNC3(result, rowIndex, colIndex))
	{
		/*
		 * We'd show NULL if user hits the max transaction id, but that should be
		 * one of the minor problems they'd probably hit.
		 */
		return PG_UINT32_MAX;
	}

	resultString = FUNC4(result, rowIndex, colIndex);
	resultStringDatum = FUNC0(resultString);
	XIDDatum = FUNC2(xidin, resultStringDatum);

	return FUNC1(XIDDatum);
}