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
struct TYPE_3__ {scalar_t__ renameType; scalar_t__ object; } ;
typedef  TYPE_1__ RenameStmt ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  const ObjectAddress ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ OBJECT_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC4 (int) ; 

const ObjectAddress *
FUNC5(RenameStmt *stmt, bool missing_ok)
{
	TypeName *typeName = NULL;
	Oid typeOid = InvalidOid;
	ObjectAddress *address = NULL;

	FUNC0(stmt->renameType == OBJECT_TYPE);

	typeName = FUNC3((List *) stmt->object);
	typeOid = FUNC1(NULL, typeName, missing_ok);
	address = FUNC4(sizeof(ObjectAddress));
	FUNC2(*address, TypeRelationId, typeOid);

	return address;
}