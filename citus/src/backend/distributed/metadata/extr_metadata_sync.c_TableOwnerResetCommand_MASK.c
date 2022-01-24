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
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

char *
FUNC5(Oid relationId)
{
	StringInfo ownerResetCommand = FUNC3();
	char *qualifiedRelationName = FUNC2(relationId);
	char *tableOwnerName = FUNC0(relationId);

	FUNC1(ownerResetCommand,
					 "ALTER TABLE %s OWNER TO %s",
					 qualifiedRelationName,
					 FUNC4(tableOwnerName));

	return ownerResetCommand->data;
}