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
struct TYPE_3__ {scalar_t__ classId; int /*<<< orphan*/  objectId; } ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ProcedureRelationId ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 

List *
FUNC4(const ObjectAddress *functionAddress)
{
	char *ddlCommand = NULL;
	char *alterFunctionOwnerSQL = NULL;

	FUNC0(functionAddress->classId == ProcedureRelationId);

	ddlCommand = FUNC2(functionAddress->objectId, true);
	alterFunctionOwnerSQL = FUNC1(functionAddress->objectId);

	return FUNC3(ddlCommand, alterFunctionOwnerSQL);
}