#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  fdwname; } ;
struct TYPE_8__ {int /*<<< orphan*/  fdwid; } ;
struct TYPE_7__ {int /*<<< orphan*/  serverid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ForeignTable ;
typedef  TYPE_2__ ForeignServer ;
typedef  TYPE_3__ ForeignDataWrapper ;

/* Variables and functions */
 int /*<<< orphan*/  CSTORE_FDW_NAME ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 char RELKIND_FOREIGN_TABLE ; 
 char FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC5(Oid relationId)
{
	bool cstoreTable = false;

	char relationKind = FUNC3(relationId);
	if (relationKind == RELKIND_FOREIGN_TABLE)
	{
		ForeignTable *foreignTable = FUNC2(relationId);
		ForeignServer *server = FUNC1(foreignTable->serverid);
		ForeignDataWrapper *foreignDataWrapper = FUNC0(server->fdwid);

		if (FUNC4(foreignDataWrapper->fdwname, CSTORE_FDW_NAME, NAMEDATALEN) == 0)
		{
			cstoreTable = true;
		}
	}

	return cstoreTable;
}