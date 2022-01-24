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
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DT_NOBEGIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  timestamptz_in ; 

TimestampTz
FUNC5(PGresult *result, int rowIndex, int colIndex)
{
	char *resultString = NULL;
	Datum resultStringDatum = 0;
	Datum timestampDatum = 0;

	if (FUNC3(result, rowIndex, colIndex))
	{
		return DT_NOBEGIN;
	}

	resultString = FUNC4(result, rowIndex, colIndex);
	resultStringDatum = FUNC0(resultString);
	timestampDatum = FUNC2(timestamptz_in, resultStringDatum, 0, -1);

	return FUNC1(timestampDatum);
}