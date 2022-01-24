#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_13__ {scalar_t__ Protocol; int /*<<< orphan*/  lock; TYPE_1__* Udp; } ;
struct TYPE_12__ {int /*<<< orphan*/  Cancel1; TYPE_4__* Connection; } ;
struct TYPE_11__ {int /*<<< orphan*/  ref; } ;
struct TYPE_10__ {int port; int /*<<< orphan*/  ip; TYPE_2__* s; } ;
typedef  TYPE_2__ SOCK ;
typedef  TYPE_3__ SESSION ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_4__ CONNECTION ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONNECTION_UDP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(CEDAR *cedar, SOCK *s, IP *ip, UINT port, void *data, UINT size)
{
	SESSION *session;
	UINT *key32;
	UCHAR *buf;
	CONNECTION *c;
	// Validate arguments
	if (s == NULL || ip == NULL || data == NULL || size == 0 || cedar == NULL)
	{
		return;
	}

	if (size < 16)
	{
		// Ignore since the packet size is not enough
		return;
	}
	buf = (UCHAR *)data;
	key32 = (UINT *)(buf + 4);


	// Get the session from the Key32 value
	session = FUNC5(cedar, FUNC4(*key32));
	if (session == NULL)
	{
		FUNC3("Invalid UDP Session Key 32: 0x%X\n", *key32);
		return;
	}

	c = session->Connection;

	// Write the data
	FUNC7(c, buf, size);

	// Rewrite the UDP socket associated with the connection
	FUNC6(c->lock);
	{
		if (c->Protocol == CONNECTION_UDP)
		{
			if (c->Udp->s != s)
			{
				if (c->Udp->s != NULL)
				{
					FUNC9(c->Udp->s);
				}
				FUNC0(s->ref);
				c->Udp->s = s;
			}
			FUNC2(&c->Udp->ip, ip, sizeof(UINT));
			c->Udp->port = port;
		}
	}
	FUNC10(c->lock);

	// Invoke the Cancel
	FUNC1(session->Cancel1);

	// Release the session
	FUNC8(session);
}