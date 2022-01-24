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
typedef  int /*<<< orphan*/  Value ;
typedef  int /*<<< orphan*/  TypeName ;
typedef  int /*<<< orphan*/ * Type ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__* Form_pg_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Oid
FUNC7(char *typeNameString)
{
	Value *schemaName = FUNC5("pg_catalog");
	Value *typeName = FUNC5(typeNameString);
	List *qualifiedName = FUNC4(schemaName, typeName);
	TypeName *enumTypeName = FUNC6(qualifiedName);

	Oid nodeRoleTypId;

	/* typenameTypeId but instead of raising an error return InvalidOid */
	Type tup = FUNC2(NULL, enumTypeName, NULL, false);
	if (tup == NULL)
	{
		return InvalidOid;
	}

#if PG_VERSION_NUM >= 120000
	nodeRoleTypId = ((Form_pg_type) GETSTRUCT(tup))->oid;
#else
	nodeRoleTypId = FUNC1(tup);
#endif
	FUNC3(tup);

	return nodeRoleTypId;
}