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
struct TYPE_8__ {int /*<<< orphan*/  preparedName; } ;
struct TYPE_9__ {int /*<<< orphan*/  port; int /*<<< orphan*/  hostname; TYPE_2__ remoteTransaction; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ RemoteTransaction ;
typedef  TYPE_3__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(MultiConnection *connection, bool commit)
{
	StringInfoData command;
	RemoteTransaction *transaction = &connection->remoteTransaction;

	FUNC4(&command);

	if (commit)
	{
		FUNC0(&command, "COMMIT PREPARED %s",
						 FUNC5(transaction->preparedName));
	}
	else
	{
		FUNC0(&command, "ROLLBACK PREPARED %s",
						 FUNC5(transaction->preparedName));
	}

	/* log a warning so the user may abort the transaction later */
	FUNC1(WARNING, (FUNC3("failed to roll back prepared transaction '%s'",
							 transaction->preparedName),
					  FUNC2("Run \"%s\" on %s:%u",
							  command.data, connection->hostname, connection->port)));
}