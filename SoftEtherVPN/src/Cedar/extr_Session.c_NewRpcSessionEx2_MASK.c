#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_18__ {int /*<<< orphan*/  Build; int /*<<< orphan*/  Version; } ;
struct TYPE_17__ {int /*<<< orphan*/  UseCompress; int /*<<< orphan*/  UseEncrypt; int /*<<< orphan*/  MaxConnection; } ;
struct TYPE_16__ {int /*<<< orphan*/  Err; void* hWndForUI; } ;
struct TYPE_15__ {int ServerMode; TYPE_2__* Connection; int /*<<< orphan*/  UseCompress; int /*<<< orphan*/  UseEncrypt; int /*<<< orphan*/  MaxConnection; int /*<<< orphan*/  ClientOption; int /*<<< orphan*/  Cancel1; void* TrafficLock; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  Name; TYPE_4__* Cedar; int /*<<< orphan*/  ref; void* lock; int /*<<< orphan*/  LoggingRecordCount; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ CONNECTION ;
typedef  TYPE_3__ CLIENT_OPTION ;
typedef  TYPE_4__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__* FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_1__* FUNC15 (int) ; 

SESSION *FUNC16(CEDAR *cedar, CLIENT_OPTION *option, UINT *err, char *client_str, void *hWnd)
{
	SESSION *s;
	CONNECTION *c;
	SOCK *sock;
	// Validate arguments
	if (cedar == NULL || option == NULL)
	{
		return NULL;
	}

	s = FUNC15(sizeof(SESSION));

	s->LoggingRecordCount = FUNC8();
	s->lock = FUNC10();
	s->ref = FUNC11();
	s->Cedar = cedar;
	s->ServerMode = false;
	s->Name = FUNC4("CLIENT_RPC_SESSION");
	s->CreatedTime = s->LastCommTime = FUNC14();
	s->Traffic = FUNC12();
	s->HaltEvent = FUNC9();
	s->TrafficLock = FUNC10();
	s->Cancel1 = FUNC6();

	// Copy the client connection options
	s->ClientOption = FUNC5(sizeof(CLIENT_OPTION));
	FUNC3(s->ClientOption, option, sizeof(CLIENT_OPTION));

	s->MaxConnection = option->MaxConnection;
	s->UseEncrypt = option->UseEncrypt;
	s->UseCompress = option->UseCompress;

	// Create a connection
	c = s->Connection = FUNC7(s, client_str, cedar->Version, cedar->Build);
	c->hWndForUI = hWnd;

	// Connect to the server
	sock = FUNC0(c);
	if (sock == NULL)
	{
		// Connection failure
		if (err != NULL)
		{
			*err = c->Err;
		}
		FUNC13(s);
		return NULL;
	}

	// Send a signature
	if (FUNC2(sock) == false)
	{
		// Failure
		if (err != NULL)
		{
			*err = c->Err;
		}
		FUNC13(s);
		return NULL;
	}

	// Receive a Hello packet
	if (FUNC1(c, sock) == false)
	{
		// Failure
		if (err != NULL)
		{
			*err = c->Err;
		}
		FUNC13(s);
		return NULL;
	}

	return s;
}