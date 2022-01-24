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
struct TYPE_9__ {int /*<<< orphan*/  port; int /*<<< orphan*/  hostname; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_2__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int QUERY_SEND_FAILED ; 
 int RESPONSE_NOT_OKAY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static bool
FUNC9(MultiConnection *connection, char *transactionName,
								   bool shouldCommit)
{
	StringInfo command = FUNC7();
	PGresult *result = NULL;
	int executeCommand = 0;
	bool raiseInterrupts = false;

	if (shouldCommit)
	{
		/* should have committed this prepared transaction */
		FUNC3(command, "COMMIT PREPARED %s",
						 FUNC8(transactionName));
	}
	else
	{
		/* should have aborted this prepared transaction */
		FUNC3(command, "ROLLBACK PREPARED %s",
						 FUNC8(transactionName));
	}

	executeCommand = FUNC1(connection, command->data, &result);
	if (executeCommand == QUERY_SEND_FAILED)
	{
		return false;
	}
	if (executeCommand == RESPONSE_NOT_OKAY)
	{
		return false;
	}

	FUNC2(result);
	FUNC0(connection, raiseInterrupts);

	FUNC4(LOG, (FUNC6("recovered a prepared transaction on %s:%d",
						 connection->hostname, connection->port),
				  FUNC5("%s", command->data)));

	return true;
}