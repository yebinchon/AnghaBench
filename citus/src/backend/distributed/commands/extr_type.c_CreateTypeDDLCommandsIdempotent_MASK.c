#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ classId; int /*<<< orphan*/  objectId; } ;
struct TYPE_8__ {void* data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ALTER_TYPE_OWNER_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__ const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ TypeRelationId ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

List *
FUNC12(const ObjectAddress *typeAddress)
{
	List *ddlCommands = NIL;
	const char *ddlCommand = NULL;
	Node *stmt = NULL;
	StringInfoData buf = { 0 };
	const char *username = NULL;

	FUNC0(typeAddress->classId == TypeRelationId);

	if (FUNC11(typeAddress->objectId))
	{
		/*
		 * array types cannot be created on their own, but could be a direct dependency of
		 * a table. In that case they are on the dependency graph and tried to be created.
		 *
		 * By returning an empty list we will not send any commands to create this type.
		 */
		return NIL;
	}

	stmt = FUNC1(typeAddress);

	/* capture ddl command for recreation and wrap in create if not exists construct */
	ddlCommand = FUNC2(stmt);
	ddlCommand = FUNC5(ddlCommand);
	ddlCommands = FUNC9(ddlCommands, (void *) ddlCommand);

	/* add owner ship change so the creation command can be run as a different user */
	username = FUNC4(FUNC3(typeAddress->objectId), false);
	FUNC8(&buf);
	FUNC6(&buf, ALTER_TYPE_OWNER_COMMAND, FUNC7(typeAddress),
					 FUNC10(username));
	ddlCommands = FUNC9(ddlCommands, buf.data);

	return ddlCommands;
}