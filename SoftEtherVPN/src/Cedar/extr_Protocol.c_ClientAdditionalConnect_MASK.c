#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_16__ {int ServerMode; int /*<<< orphan*/  ConnectingSocks; TYPE_3__* Session; int /*<<< orphan*/  CurrentNumConnection; TYPE_2__* Tcp; scalar_t__ Halt; } ;
struct TYPE_15__ {scalar_t__ Direction; scalar_t__ DisconnectTick; } ;
struct TYPE_14__ {int SessionTimeOuted; int /*<<< orphan*/  Cancel1; scalar_t__ HalfConnection; TYPE_1__* ClientOption; } ;
struct TYPE_13__ {int /*<<< orphan*/  TcpSockList; } ;
struct TYPE_12__ {int ConnectionDisconnectSpan; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_4__ TCPSOCK ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_5__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_5__*) ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERR_INVALID_PROTOCOL ; 
 scalar_t__ ERR_SESSION_TIMEOUT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ TCP_SERVER_TO_CLIENT ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

bool FUNC19(CONNECTION *c, THREAD *t)
{
	SOCK *s;
	PACK *p;
	TCPSOCK *ts;
	UINT err;
	UINT direction;

	// Validate arguments
	if (c == NULL)
	{
		return false;
	}

	// Socket connection to the server
	s = FUNC2(c);
	if (s == NULL)
	{
		// Failed to connect socket
		return false;
	}

	if (c->Halt)
	{
		goto CLEANUP;
	}

	// Send a signature
	FUNC7("Uploading Signature...\n");
	if (FUNC5(s) == false)
	{
		goto CLEANUP;
	}

	if (c->Halt)
	{
		// Stop
		goto CLEANUP;
	}

	// Receive a Hello packet
	FUNC7("Downloading Hello...\n");
	if (FUNC3(c, s) == false)
	{
		goto CLEANUP;
	}

	if (c->Halt)
	{
		// Stop
		goto CLEANUP;
	}

	// Send a authentication data for the additional connection
	if (FUNC4(c, s) == false)
	{
		// Disconnected
		goto CLEANUP;
	}

	// Receive a response
	p = FUNC12(s);
	if (p == NULL)
	{
		// Disconnected
		goto CLEANUP;
	}

	err = FUNC11(p);
	direction = FUNC15(p, "direction");

	FUNC10(p);
	p = NULL;

	if (err != 0)
	{
		// Error has occurred
		FUNC7("Additional Connect Error: %u\n", err);
		if (err == ERR_SESSION_TIMEOUT || err == ERR_INVALID_PROTOCOL)
		{
			// We shall re-connection because it is a fatal error
			c->Session->SessionTimeOuted = true;
		}
		goto CLEANUP;
	}

	FUNC7("Additional Connect Succeed!\n");

	// Success the additional connection
	// Add to the TcpSockList of the connection
	ts = FUNC14(s);

	if (c->ServerMode == false)
	{
		if (c->Session->ClientOption->ConnectionDisconnectSpan != 0)
		{
			ts->DisconnectTick = FUNC17() + c->Session->ClientOption->ConnectionDisconnectSpan * (UINT64)1000;
		}
	}

	FUNC13(c->Tcp->TcpSockList);
	{
		ts->Direction = direction;
		FUNC0(c->Tcp->TcpSockList, ts);
	}
	FUNC18(c->Tcp->TcpSockList);
	FUNC7("TCP Connection Incremented: %u\n", FUNC6(c->CurrentNumConnection));

	if (c->Session->HalfConnection)
	{
		FUNC7("New Half Connection: %s\n",
			direction == TCP_SERVER_TO_CLIENT ? "TCP_SERVER_TO_CLIENT" : "TCP_CLIENT_TO_SERVER"
			);
	}

	// Issue the Cancel to the session
	FUNC1(c->Session->Cancel1);

	// Remove the socket from the socket list of connected
	FUNC13(c->ConnectingSocks);
	{
		if (FUNC8(c->ConnectingSocks, s))
		{
			FUNC16(s);
		}
	}
	FUNC18(c->ConnectingSocks);
	FUNC16(s);
	return true;

CLEANUP:
	// Disconnection process
	FUNC9(s);
	FUNC13(c->ConnectingSocks);
	{
		if (FUNC8(c->ConnectingSocks, s))
		{
			FUNC16(s);

		}
	}
	FUNC18(c->ConnectingSocks);
	FUNC16(s);
	return false;
}