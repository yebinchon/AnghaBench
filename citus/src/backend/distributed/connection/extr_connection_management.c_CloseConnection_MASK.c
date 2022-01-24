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
struct TYPE_9__ {int /*<<< orphan*/  database; int /*<<< orphan*/  user; int /*<<< orphan*/  port; int /*<<< orphan*/  hostname; } ;
struct TYPE_8__ {int /*<<< orphan*/  connectionNode; int /*<<< orphan*/  database; int /*<<< orphan*/  user; int /*<<< orphan*/  port; int /*<<< orphan*/  hostname; int /*<<< orphan*/ * pgConn; } ;
typedef  TYPE_1__ MultiConnection ;
typedef  TYPE_2__ ConnectionHashKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ConnectionHash ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  MAX_NODE_LENGTH ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(MultiConnection *connection)
{
	ConnectionHashKey key;
	bool found;

	/* close connection */
	FUNC2(connection->pgConn);
	connection->pgConn = NULL;

	FUNC8(key.hostname, connection->hostname, MAX_NODE_LENGTH);
	key.port = connection->port;
	FUNC8(key.user, connection->user, NAMEDATALEN);
	FUNC8(key.database, connection->database, NAMEDATALEN);

	FUNC6(ConnectionHash, &key, HASH_FIND, &found);

	if (found)
	{
		/* unlink from list of open connections */
		FUNC3(&connection->connectionNode);

		/* same for transaction state and shard/placement machinery */
		FUNC0(connection);
		FUNC1(connection);

		/* we leave the per-host entry alive */
		FUNC7(connection);
	}
	else
	{
		FUNC4(ERROR, (FUNC5("closing untracked connection")));
	}
}