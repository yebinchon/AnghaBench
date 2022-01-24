#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int latestUnconsumedWaitEvents; TYPE_2__* connection; } ;
typedef  TYPE_1__ WorkerSession ;
struct TYPE_6__ {int /*<<< orphan*/  pgConn; void* connectionState; } ;
typedef  TYPE_2__ MultiConnection ;
typedef  scalar_t__ ConnStatusType ;

/* Variables and functions */
 scalar_t__ CONNECTION_BAD ; 
 void* MULTI_CONNECTION_LOST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int WL_SOCKET_READABLE ; 
 int WL_SOCKET_WRITEABLE ; 

__attribute__((used)) static bool
FUNC5(WorkerSession *session)
{
	int sendStatus = 0;
	MultiConnection *connection = session->connection;
	int waitFlags = WL_SOCKET_READABLE;
	bool connectionReady = false;

	ConnStatusType status = FUNC3(connection->pgConn);
	if (status == CONNECTION_BAD)
	{
		connection->connectionState = MULTI_CONNECTION_LOST;
		return false;
	}

	/* try to send all pending data */
	sendStatus = FUNC1(connection->pgConn);
	if (sendStatus == -1)
	{
		connection->connectionState = MULTI_CONNECTION_LOST;
		return false;
	}
	else if (sendStatus == 1)
	{
		/* more data to send, wait for socket to become writable */
		waitFlags = waitFlags | WL_SOCKET_WRITEABLE;
	}

	if ((session->latestUnconsumedWaitEvents & WL_SOCKET_READABLE) != 0)
	{
		if (FUNC0(connection->pgConn) == 0)
		{
			connection->connectionState = MULTI_CONNECTION_LOST;
			return false;
		}
	}

	if (!FUNC2(connection->pgConn))
	{
		connectionReady = true;
	}

	FUNC4(session, waitFlags);

	/* don't consume input redundantly if we cycle back into CheckConnectionReady */
	session->latestUnconsumedWaitEvents = 0;

	return connectionReady;
}