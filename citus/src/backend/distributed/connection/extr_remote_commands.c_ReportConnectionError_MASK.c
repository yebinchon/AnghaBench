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
struct TYPE_3__ {char* hostname; int port; int /*<<< orphan*/ * pgConn; } ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_1__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERRCODE_CONNECTION_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(MultiConnection *connection, int elevel)
{
	char *nodeName = connection->hostname;
	int nodePort = connection->port;
	PGconn *pgConn = connection->pgConn;
	char *messageDetail = NULL;

	if (pgConn != NULL)
	{
		messageDetail = FUNC6(FUNC1(pgConn));
	}

	FUNC2(elevel, (FUNC3(ERRCODE_CONNECTION_FAILURE),
					 FUNC5("connection error: %s:%d", nodeName, nodePort),
					 messageDetail != NULL ?
					 FUNC4("%s", FUNC0(messageDetail)) : 0));
}