#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  fdwname; } ;
struct TYPE_13__ {int /*<<< orphan*/  options; int /*<<< orphan*/ * serverversion; int /*<<< orphan*/ * servertype; int /*<<< orphan*/  servername; int /*<<< orphan*/  fdwid; } ;
struct TYPE_12__ {int /*<<< orphan*/  serverid; } ;
struct TYPE_11__ {char* data; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ForeignTable ;
typedef  TYPE_3__ ForeignServer ;
typedef  TYPE_4__ ForeignDataWrapper ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

char *
FUNC8(Oid tableRelationId)
{
	ForeignTable *foreignTable = FUNC3(tableRelationId);
	ForeignServer *server = FUNC2(foreignTable->serverid);
	ForeignDataWrapper *foreignDataWrapper = FUNC1(server->fdwid);

	StringInfoData buffer = { NULL, 0, 0, 0 };
	FUNC5(&buffer);

	FUNC4(&buffer, "CREATE SERVER %s", FUNC6(server->servername));
	if (server->servertype != NULL)
	{
		FUNC4(&buffer, " TYPE %s",
						 FUNC7(server->servertype));
	}
	if (server->serverversion != NULL)
	{
		FUNC4(&buffer, " VERSION %s",
						 FUNC7(server->serverversion));
	}

	FUNC4(&buffer, " FOREIGN DATA WRAPPER %s",
					 FUNC6(foreignDataWrapper->fdwname));

	/* append server options, if any */
	FUNC0(&buffer, server->options);

	return (buffer.data);
}