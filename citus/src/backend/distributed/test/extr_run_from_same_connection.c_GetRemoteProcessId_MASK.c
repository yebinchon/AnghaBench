#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int64 ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  GET_PROCESS_ID ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  singleConnection ; 

__attribute__((used)) static int64
FUNC8()
{
	StringInfo queryStringInfo = FUNC7();
	PGresult *result = NULL;
	int64 rowCount = 0;
	int64 resultValue = 0;

	FUNC6(queryStringInfo, GET_PROCESS_ID);

	FUNC1(singleConnection, queryStringInfo->data, &result);

	rowCount = FUNC4(result);

	if (rowCount != 1)
	{
		FUNC2();
	}

	resultValue = FUNC5(result, 0, 0);

	FUNC3(result);
	FUNC0(singleConnection, false);

	return resultValue;
}