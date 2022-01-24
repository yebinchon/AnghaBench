#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  fdwname; } ;
struct TYPE_12__ {int /*<<< orphan*/  fdwid; } ;
struct TYPE_11__ {int /*<<< orphan*/  serverid; } ;
struct TYPE_10__ {char* data; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ForeignTable ;
typedef  TYPE_3__ ForeignServer ;
typedef  TYPE_4__ ForeignDataWrapper ;

/* Variables and functions */
 int /*<<< orphan*/  ForeignDataWrapperRelationId ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

char *
FUNC13(Oid tableRelationId)
{
	ForeignTable *foreignTable = FUNC2(tableRelationId);
	ForeignServer *server = FUNC1(foreignTable->serverid);
	ForeignDataWrapper *foreignDataWrapper = FUNC0(server->fdwid);
	StringInfoData buffer = { NULL, 0, 0, 0 };

	Oid classId = ForeignDataWrapperRelationId;
	Oid objectId = server->fdwid;

	Oid extensionId = FUNC7(classId, objectId);
	if (FUNC3(extensionId))
	{
		char *extensionName = FUNC8(extensionId);
		Oid extensionSchemaId = FUNC9(extensionId);
		char *extensionSchema = FUNC10(extensionSchemaId);

		FUNC11(&buffer);
		FUNC4(&buffer, "CREATE EXTENSION IF NOT EXISTS %s WITH SCHEMA %s",
						 FUNC12(extensionName),
						 FUNC12(extensionSchema));
	}
	else
	{
		FUNC5(NOTICE, (FUNC6("foreign-data wrapper \"%s\" does not have an "
								"extension defined", foreignDataWrapper->fdwname)));
	}

	return (buffer.data);
}