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
typedef  int bits16 ;
struct TYPE_2__ {int /*<<< orphan*/  collname; int /*<<< orphan*/  collnamespace; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_collation ;

/* Variables and functions */
 int /*<<< orphan*/  COLLOID ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 int FORMAT_COLLATE_ALLOW_INVALID ; 
 int FORMAT_COLLATE_FORCE_QUALIFY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidOid ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*) ; 
 char* FUNC10 (char*,char*) ; 

char *
FUNC11(Oid collid, bits16 flags)
{
	HeapTuple tuple = NULL;
	Form_pg_collation collform = NULL;
	char *buf = NULL;
	char *nspname = NULL;
	char *typname = NULL;

	if (collid == InvalidOid && (flags & FORMAT_COLLATE_ALLOW_INVALID) != 0)
	{
		return FUNC9("-");
	}

	tuple = FUNC6(COLLOID, FUNC4(collid));
	if (!FUNC2(tuple))
	{
		if ((flags & FORMAT_COLLATE_ALLOW_INVALID) != 0)
		{
			return FUNC9("???");
		}
		else
		{
			FUNC7(ERROR, "cache lookup failed for collate %u", collid);
		}
	}
	collform = (Form_pg_collation) FUNC1(tuple);

	if ((flags & FORMAT_COLLATE_FORCE_QUALIFY) == 0 && FUNC0(collid))
	{
		nspname = NULL;
	}
	else
	{
		nspname = FUNC8(collform->collnamespace);
	}

	typname = FUNC3(collform->collname);

	buf = FUNC10(nspname, typname);

	FUNC5(tuple);

	return buf;
}