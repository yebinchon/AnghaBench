#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  enumlabel; } ;
typedef  char const* Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_enum ;

/* Variables and functions */
 char DISTRIBUTE_BY_APPEND ; 
 char DISTRIBUTE_BY_HASH ; 
 char DISTRIBUTE_BY_RANGE ; 
 int /*<<< orphan*/  ENUMOID ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char
FUNC9(Oid distributionMethodOid)
{
	HeapTuple enumTuple = NULL;
	Form_pg_enum enumForm = NULL;
	char distributionMethod = 0;
	const char *enumLabel = NULL;

	enumTuple = FUNC5(ENUMOID, FUNC3(distributionMethodOid));
	if (!FUNC1(enumTuple))
	{
		FUNC6(ERROR, (FUNC7("invalid internal value for enum: %u",
							   distributionMethodOid)));
	}

	enumForm = (Form_pg_enum) FUNC0(enumTuple);
	enumLabel = FUNC2(enumForm->enumlabel);

	if (FUNC8(enumLabel, "append", NAMEDATALEN) == 0)
	{
		distributionMethod = DISTRIBUTE_BY_APPEND;
	}
	else if (FUNC8(enumLabel, "hash", NAMEDATALEN) == 0)
	{
		distributionMethod = DISTRIBUTE_BY_HASH;
	}
	else if (FUNC8(enumLabel, "range", NAMEDATALEN) == 0)
	{
		distributionMethod = DISTRIBUTE_BY_RANGE;
	}
	else
	{
		FUNC6(ERROR, (FUNC7("invalid label for enum: %s", enumLabel)));
	}

	FUNC4(enumTuple);

	return distributionMethod;
}