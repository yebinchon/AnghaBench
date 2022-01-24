#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ ClientConnectError_NoSavePassword; int /*<<< orphan*/  Err; } ;
struct TYPE_16__ {int CancelConnect; int Client_NoSavePassword; int /*<<< orphan*/  lock; TYPE_10__* Policy; TYPE_5__* Connection; TYPE_3__* Cedar; TYPE_2__* Account; int /*<<< orphan*/  Err; int /*<<< orphan*/  ClientStatus; } ;
struct TYPE_15__ {int /*<<< orphan*/ * Client; } ;
struct TYPE_14__ {int /*<<< orphan*/  lock; TYPE_1__* ClientAuth; } ;
struct TYPE_13__ {scalar_t__ AuthType; int /*<<< orphan*/  PlainPassword; int /*<<< orphan*/  HashedPassword; } ;
struct TYPE_12__ {scalar_t__ NoSavePassword; } ;
typedef  TYPE_4__ SESSION ;
typedef  TYPE_5__ CONNECTION ;

/* Variables and functions */
 scalar_t__ AUTHTYPE_PASSWORD ; 
 scalar_t__ AUTHTYPE_RADIUS ; 
 int /*<<< orphan*/  CLIENT_STATUS_CONNECTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

bool FUNC9(SESSION *s)
{
	CONNECTION *c;
	bool ret = false;
	// Validate arguments
	if (s == NULL)
	{
		return false;
	}

	s->ClientStatus = CLIENT_STATUS_CONNECTING;

	FUNC2("SessionConnect() Started.\n");

	// Initialize the session
	FUNC4(s->lock);
	{
		s->Err = ERR_NO_ERROR;
		if (s->Policy != NULL)
		{
			FUNC3(s->Policy);
			s->Policy = NULL;
		}
	}
	FUNC7(s->lock);

	s->CancelConnect = false;

	// Create a Client Connection
	c = FUNC5(s);
	s->Connection = c;

	// Connect the client to the server
	ret = FUNC1(c);
	s->Err = c->Err;

	s->CancelConnect = false;

	if (s->Cedar->Client != NULL)
	{
		if (s->Policy != NULL)
		{
			if (s->Policy->NoSavePassword)
			{
				s->Client_NoSavePassword = true;

				if (s->Account != NULL)
				{
					FUNC4(s->Account->lock);
					{
						if (s->Account->ClientAuth != NULL)
						{
							if (s->Account->ClientAuth->AuthType == AUTHTYPE_PASSWORD ||
								s->Account->ClientAuth->AuthType == AUTHTYPE_RADIUS)
							{
								FUNC8(s->Account->ClientAuth->HashedPassword, sizeof(s->Account->ClientAuth->HashedPassword));
								FUNC8(s->Account->ClientAuth->PlainPassword, sizeof(s->Account->ClientAuth->PlainPassword));
							}
						}
					}
					FUNC7(s->Account->lock);

					FUNC0(s->Cedar->Client);
				}
			}
		}
	}

	if (c->ClientConnectError_NoSavePassword)
	{
		s->Client_NoSavePassword = true;
	}

	// Release the client connection
	s->Connection = NULL;
	FUNC6(c);

	FUNC4(s->lock);
	{
		if (s->Policy != NULL)
		{
			FUNC3(s->Policy);
			s->Policy = NULL;
		}
	}
	FUNC7(s->lock);

	return ret;
}