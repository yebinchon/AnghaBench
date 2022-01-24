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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  MultiConnection ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FORCE_NEW_CONNECTION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GET_TABLE_DDL_EVENTS ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC7 () ; 

List *
FUNC8(const char *nodeName, uint32 nodePort, const char *tableName)
{
	List *ddlCommandList = NIL;
	StringInfo queryString = NULL;
	MultiConnection *connection = NULL;
	PGresult *result = NULL;
	uint32 connectionFlag = FORCE_NEW_CONNECTION;

	queryString = FUNC7();
	FUNC6(queryString, GET_TABLE_DDL_EVENTS, tableName);
	connection = FUNC3(connectionFlag, nodeName, nodePort);

	FUNC1(connection, queryString->data, &result);
	ddlCommandList = FUNC5(result);

	FUNC4(result);
	FUNC2(connection);
	FUNC0(connection);

	return ddlCommandList;
}