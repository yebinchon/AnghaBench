#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TypeName ;
struct TYPE_3__ {int /*<<< orphan*/  typevar; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  const ObjectAddress ;
typedef  TYPE_1__ CompositeTypeStmt ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  const* FUNC3 (int) ; 

const ObjectAddress *
FUNC4(CompositeTypeStmt *stmt, bool missing_ok)
{
	TypeName *typeName = NULL;
	Oid typeOid = InvalidOid;
	ObjectAddress *address = NULL;

	typeName = FUNC1(stmt->typevar);
	typeOid = FUNC0(NULL, typeName, missing_ok);
	address = FUNC3(sizeof(ObjectAddress));
	FUNC2(*address, TypeRelationId, typeOid);

	return address;
}