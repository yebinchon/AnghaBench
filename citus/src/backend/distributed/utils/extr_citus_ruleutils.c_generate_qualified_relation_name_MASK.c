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
struct TYPE_2__ {int /*<<< orphan*/  relnamespace; int /*<<< orphan*/  relname; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char*) ; 

char *
FUNC9(Oid relid)
{
	HeapTuple tp;
	Form_pg_class reltup;
	char *relname;
	char *nspname;
	char *result;

	tp = FUNC5(RELOID, FUNC3(relid));
	if (!FUNC1(tp))
	{
		FUNC6(ERROR, "cache lookup failed for relation %u", relid);
	}
	reltup = (Form_pg_class) FUNC0(tp);
	relname = FUNC2(reltup->relname);

	nspname = FUNC7(reltup->relnamespace);
	if (!nspname)
	{
		FUNC6(ERROR, "cache lookup failed for namespace %u",
			 reltup->relnamespace);
	}

	result = FUNC8(nspname, relname);

	FUNC4(tp);

	return result;
}