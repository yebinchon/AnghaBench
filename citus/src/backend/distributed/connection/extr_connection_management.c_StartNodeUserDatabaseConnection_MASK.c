#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  dlist_head ;
struct TYPE_13__ {int /*<<< orphan*/  connections; } ;
struct TYPE_12__ {int /*<<< orphan*/  database; int /*<<< orphan*/  user; int /*<<< orphan*/  port; int /*<<< orphan*/  hostname; } ;
struct TYPE_11__ {int /*<<< orphan*/  connectionNode; } ;
typedef  TYPE_1__ MultiConnection ;
typedef  TYPE_2__ ConnectionHashKey ;
typedef  TYPE_3__ ConnectionHashEntry ;

/* Variables and functions */
 scalar_t__ COORD_TRANS_IDLE ; 
 scalar_t__ COORD_TRANS_NONE ; 
 int /*<<< orphan*/  ConnectionContext ; 
 int /*<<< orphan*/  ConnectionHash ; 
 scalar_t__ CurrentCoordinatedTransactionState ; 
 char const* FUNC0 () ; 
 char const* FUNC1 () ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int FORCE_NEW_CONNECTION ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 scalar_t__ MAX_NODE_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 scalar_t__ FUNC13 (char const*) ; 

MultiConnection *
FUNC14(uint32 flags, const char *hostname, int32 port, const
								char *user, const char *database)
{
	ConnectionHashKey key;
	ConnectionHashEntry *entry = NULL;
	MultiConnection *connection;
	bool found;

	/* do some minimal input checks */
	FUNC12(key.hostname, hostname, MAX_NODE_LENGTH);
	if (FUNC13(hostname) > MAX_NODE_LENGTH)
	{
		FUNC8(ERROR, (FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
						FUNC10("hostname exceeds the maximum length of %d",
							   MAX_NODE_LENGTH)));
	}

	key.port = port;
	if (user)
	{
		FUNC12(key.user, user, NAMEDATALEN);
	}
	else
	{
		FUNC12(key.user, FUNC1(), NAMEDATALEN);
	}
	if (database)
	{
		FUNC12(key.database, database, NAMEDATALEN);
	}
	else
	{
		FUNC12(key.database, FUNC0(), NAMEDATALEN);
	}

	if (CurrentCoordinatedTransactionState == COORD_TRANS_NONE)
	{
		CurrentCoordinatedTransactionState = COORD_TRANS_IDLE;
	}

	/*
	 * Lookup relevant hash entry. We always enter. If only a cached
	 * connection is desired, and there's none, we'll simply leave the
	 * connection list empty.
	 */

	entry = FUNC11(ConnectionHash, &key, HASH_ENTER, &found);
	if (!found)
	{
		entry->connections = FUNC3(ConnectionContext,
												sizeof(dlist_head));
		FUNC6(entry->connections);
	}

	/* if desired, check whether there's a usable connection */
	if (!(flags & FORCE_NEW_CONNECTION))
	{
		/* check connection cache for a connection that's not already in use */
		connection = FUNC2(entry->connections, flags);
		if (connection)
		{
			return connection;
		}
	}

	/*
	 * Either no caching desired, or no pre-established, non-claimed,
	 * connection present. Initiate connection establishment.
	 */
	connection = FUNC5(&key);

	FUNC7(entry->connections, &connection->connectionNode);

	FUNC4(connection);

	return connection;
}