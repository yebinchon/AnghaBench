#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_1__* Session; int /*<<< orphan*/  ServerX; int /*<<< orphan*/  ConnectingSocks; int /*<<< orphan*/  ServerName; } ;
struct TYPE_15__ {int /*<<< orphan*/  RemoteX; int /*<<< orphan*/  ref; } ;
struct TYPE_14__ {int SessionTimeOuted; scalar_t__ Halt; } ;
typedef  TYPE_2__ SOCK ;
typedef  TYPE_3__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONNECTING_TIMEOUT ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

SOCK *FUNC11(CONNECTION *c)
{
	SOCK *s;
	// Validate arguments
	if (c == NULL)
	{
		return NULL;
	}

	// Socket connection
	s = FUNC2(c, true);
	if (s == NULL)
	{
		// Connection failure
		return NULL;
	}

	// Add the socket to the list
	FUNC6(c->ConnectingSocks);
	{
		FUNC0(c->ConnectingSocks, s);
		FUNC1(s->ref);
	}
	FUNC10(c->ConnectingSocks);

	if (c->Session->Halt)
	{
		// Stop
		FUNC5(s);
		FUNC6(c->ConnectingSocks);
		{
			if (FUNC4(c->ConnectingSocks, s))
			{
				FUNC7(s);
			}
		}
		FUNC10(c->ConnectingSocks);
		FUNC7(s);
		return NULL;
	}

	// Time-out
	FUNC8(s, CONNECTING_TIMEOUT);

	// Start the SSL communication
	if (FUNC9(s, NULL, NULL, 0, c->ServerName) == false)
	{
		// SSL communication failure
		FUNC5(s);
		FUNC6(c->ConnectingSocks);
		{
			if (FUNC4(c->ConnectingSocks, s))
			{
				FUNC7(s);
			}
		}
		FUNC10(c->ConnectingSocks);
		FUNC7(s);
		return NULL;
	}

	// Check the certificate
	if (FUNC3(s->RemoteX, c->ServerX) == false)
	{
		// The certificate is invalid
		FUNC5(s);
		c->Session->SessionTimeOuted = true;
	}

	return s;
}