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
struct TYPE_3__ {char* hostname; int port; int /*<<< orphan*/  pgConn; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ERRCODE_INTERNAL_ERROR ; 
 int FUNC1 (char,char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  PG_DIAG_CONTEXT ; 
 int /*<<< orphan*/  PG_DIAG_MESSAGE_DETAIL ; 
 int /*<<< orphan*/  PG_DIAG_MESSAGE_HINT ; 
 int /*<<< orphan*/  PG_DIAG_MESSAGE_PRIMARY ; 
 int /*<<< orphan*/  PG_DIAG_SQLSTATE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 

void
FUNC16(MultiConnection *connection, PGresult *result, int elevel)
{
	/* we release PQresult when throwing an error because the caller can't */
	FUNC5();
	{
		char *sqlStateString = FUNC8(result, PG_DIAG_SQLSTATE);
		char *messagePrimary = FUNC8(result, PG_DIAG_MESSAGE_PRIMARY);
		char *messageDetail = FUNC8(result, PG_DIAG_MESSAGE_DETAIL);
		char *messageHint = FUNC8(result, PG_DIAG_MESSAGE_HINT);
		char *messageContext = FUNC8(result, PG_DIAG_CONTEXT);

		char *nodeName = connection->hostname;
		int nodePort = connection->port;
		int sqlState = ERRCODE_INTERNAL_ERROR;

		if (sqlStateString != NULL)
		{
			sqlState = FUNC1(sqlStateString[0],
									 sqlStateString[1],
									 sqlStateString[2],
									 sqlStateString[3],
									 sqlStateString[4]);
		}

		/*
		 * If the PGresult did not contain a message, the connection may provide a
		 * suitable top level one. At worst, this is an empty string.
		 */
		if (messagePrimary == NULL)
		{
			messagePrimary = FUNC15(FUNC7(connection->pgConn));
		}

		FUNC9(elevel, (FUNC10(sqlState), FUNC14("%s", messagePrimary),
						 messageDetail ?
						 FUNC12("%s", FUNC0(messageDetail)) : 0,
						 messageHint ? FUNC13("%s", messageHint) : 0,
						 messageContext ? FUNC11("%s", messageContext) : 0,
						 FUNC11("while executing command on %s:%d",
									nodeName, nodePort)));
	}
	FUNC2();
	{
		FUNC6(result);
		FUNC4();
	}
	FUNC3();
}