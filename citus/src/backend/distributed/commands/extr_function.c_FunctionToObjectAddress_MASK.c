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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectWithArgs ;
typedef  int /*<<< orphan*/  ObjectType ;
typedef  int /*<<< orphan*/  ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

__attribute__((used)) static ObjectAddress *
FUNC4(ObjectType objectType, ObjectWithArgs *objectWithArgs,
						bool missing_ok)
{
	Oid funcOid = InvalidOid;
	ObjectAddress *address = NULL;

	FUNC0(objectType);

	funcOid = FUNC1(objectType, objectWithArgs, missing_ok);
	address = FUNC3(sizeof(ObjectAddress));
	FUNC2(*address, ProcedureRelationId, funcOid);

	return address;
}