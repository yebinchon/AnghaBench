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
typedef  size_t int32 ;
struct TYPE_3__ {int /*<<< orphan*/  pgConn; } ;
typedef  TYPE_1__ MultiConnection ;
typedef  scalar_t__ ConnStatusType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CONNECTION_BAD ; 
 scalar_t__ CONNECTION_OK ; 
 TYPE_1__** ClientConnectionArray ; 
 size_t INVALID_CONNECTION_ID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

bool
FUNC2(int32 connectionId)
{
	MultiConnection *connection = NULL;
	ConnStatusType connStatusType = CONNECTION_OK;
	bool connectionUp = true;

	FUNC0(connectionId != INVALID_CONNECTION_ID);
	connection = ClientConnectionArray[connectionId];
	FUNC0(connection != NULL);

	connStatusType = FUNC1(connection->pgConn);
	if (connStatusType == CONNECTION_BAD)
	{
		connectionUp = false;
	}

	return connectionUp;
}