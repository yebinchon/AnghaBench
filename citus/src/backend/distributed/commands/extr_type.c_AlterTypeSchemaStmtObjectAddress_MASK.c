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
typedef  int /*<<< orphan*/  Value ;
typedef  int /*<<< orphan*/  TypeName ;
struct TYPE_3__ {scalar_t__ objectType; scalar_t__ object; int /*<<< orphan*/  newschema; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  const ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ AlterObjectSchemaStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ OBJECT_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC12 (int) ; 

const ObjectAddress *
FUNC13(AlterObjectSchemaStmt *stmt, bool missing_ok)
{
	ObjectAddress *address = NULL;
	TypeName *typeName = NULL;
	Oid typeOid = InvalidOid;
	List *names = NIL;

	FUNC0(stmt->objectType == OBJECT_TYPE);

	names = (List *) stmt->object;

	/*
	 * we hardcode missing_ok here during LookupTypeNameOid because if we can't find it it
	 * might have already been moved in this transaction.
	 */
	typeName = FUNC11(names);
	typeOid = FUNC1(NULL, typeName, true);

	if (typeOid == InvalidOid)
	{
		/*
		 * couldn't find the type, might have already been moved to the new schema, we
		 * construct a new typename that uses the new schema to search in.
		 */

		/* typename is the last in the list of names */
		Value *typeNameStr = FUNC7(FUNC9(names));

		/*
		 * we don't error here either, as the error would be not a good user facing
		 * error if the type didn't exist in the first place.
		 */
		names = FUNC8(FUNC10(stmt->newschema), typeNameStr);
		typeName = FUNC11(names);
		typeOid = FUNC1(NULL, typeName, true);

		/*
		 * if the type is still invalid we couldn't find the type, error with the same
		 * message postgres would error with it missing_ok is false (not ok to miss)
		 */
		if (!missing_ok && typeOid == InvalidOid)
		{
			names = (List *) stmt->object;
			typeName = FUNC11(names);

			FUNC4(ERROR, (FUNC5(ERRCODE_UNDEFINED_OBJECT),
							FUNC6("type \"%s\" does not exist",
								   FUNC3(typeName))));
		}
	}

	address = FUNC12(sizeof(ObjectAddress));
	FUNC2(*address, TypeRelationId, typeOid);

	return address;
}