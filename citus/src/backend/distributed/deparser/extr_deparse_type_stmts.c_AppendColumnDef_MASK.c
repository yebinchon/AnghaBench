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
struct TYPE_4__ {scalar_t__ colname; int /*<<< orphan*/  is_not_null; int /*<<< orphan*/  typeName; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ColumnDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 char const* FUNC6 (int /*<<< orphan*/ ) ; 
 char const* FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8(StringInfo str, ColumnDef *columnDef)
{
	Oid typeOid = FUNC3(NULL, columnDef->typeName, false);
	Oid collationOid = FUNC2(NULL, columnDef, typeOid);

	FUNC0(!columnDef->is_not_null); /* not null is not supported on composite types */

	if (columnDef->colname)
	{
		FUNC5(str, "%s ", FUNC7(columnDef->colname));
	}

	FUNC5(str, "%s", FUNC6(typeOid));

	if (FUNC4(collationOid))
	{
		const char *identifier = FUNC1(collationOid);
		FUNC5(str, " COLLATE %s", identifier);
	}
}