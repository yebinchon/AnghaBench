#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X ;
struct TYPE_12__ {void* Err; TYPE_1__* FirstSock; int /*<<< orphan*/  ServerName; scalar_t__ Halt; } ;
struct TYPE_11__ {int /*<<< orphan*/ * RemoteX; } ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  K ;
typedef  TYPE_2__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTING_TIMEOUT ; 
 TYPE_1__* FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* ERR_SERVER_IS_NOT_VPN ; 
 void* ERR_USER_CANCEL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SOCK *FUNC5(CONNECTION *c)
{
	SOCK *s = NULL;
	X *x = NULL;
	K *k = NULL;
	// Validate arguments
	if (c == NULL)
	{
		return NULL;
	}

	if (c->Halt)
	{
		c->Err = ERR_USER_CANCEL;
		return NULL;
	}

	// Get the socket by connecting
	s = FUNC0(c, false);
	if (s == NULL)
	{
		// Connection failure
		return NULL;
	}

	c->FirstSock = s;

	if (c->Halt)
	{
		c->Err = ERR_USER_CANCEL;
		FUNC2(s);
		c->FirstSock = NULL;
		return NULL;
	}

	// Time-out
	FUNC3(s, CONNECTING_TIMEOUT);

	// Start the SSL communication
	if (FUNC4(s, x, k, 0, c->ServerName) == false)
	{
		// SSL communication start failure
		FUNC1(s);
		FUNC2(s);
		c->FirstSock = NULL;
		c->Err = ERR_SERVER_IS_NOT_VPN;
		return NULL;
	}

	if (s->RemoteX == NULL)
	{
		// SSL communication start failure
		FUNC1(s);
		FUNC2(s);
		c->FirstSock = NULL;
		c->Err = ERR_SERVER_IS_NOT_VPN;
		return NULL;
	}

	return s;
}