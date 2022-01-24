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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  textin ; 

__attribute__((used)) static text *
FUNC5(PGresult *result, int rowIndex, int colIndex)
{
	char *resultString = NULL;
	Datum resultStringDatum = 0;
	Datum textDatum = 0;

	if (FUNC3(result, rowIndex, colIndex))
	{
		return NULL;
	}

	resultString = FUNC4(result, rowIndex, colIndex);
	resultStringDatum = FUNC0(resultString);
	textDatum = FUNC2(textin, resultStringDatum);

	return (text *) FUNC1(textDatum);
}