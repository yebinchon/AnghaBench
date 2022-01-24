#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_20__ {TYPE_1__* Server; } ;
struct TYPE_19__ {scalar_t__ Protocol; int ShadowIPv6; scalar_t__ Halt; int /*<<< orphan*/  lock; TYPE_2__* Sock; void* Status; int /*<<< orphan*/  Event; int /*<<< orphan*/  Port; TYPE_6__* Cedar; int /*<<< orphan*/  RandPortId; int /*<<< orphan*/ * NatTGlobalUdpPort; int /*<<< orphan*/  LocalOnly; int /*<<< orphan*/  EnableConditionalAccept; } ;
struct TYPE_18__ {int /*<<< orphan*/  ref; } ;
struct TYPE_17__ {int /*<<< orphan*/  ListenIP; } ;
typedef  TYPE_2__ SOCK ;
typedef  TYPE_3__ LISTENER ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  IP_PROTO_ICMPV4 ; 
 int FUNC4 () ; 
 scalar_t__ LISTENER_DNS ; 
 scalar_t__ LISTENER_ICMP ; 
 scalar_t__ LISTENER_INPROC ; 
 scalar_t__ LISTENER_REVERSE ; 
 scalar_t__ LISTENER_RUDP ; 
 void* LISTENER_STATUS_LISTENING ; 
 void* LISTENER_STATUS_TRYING ; 
 scalar_t__ LISTENER_TCP ; 
 int LISTEN_RETRY_TIME ; 
 int LISTEN_RETRY_TIME_NOIPV6 ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 () ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 () ; 
 int /*<<< orphan*/  ListenerRUDPRpcRecvProc ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VPN_RUDP_SVC_NAME ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 

void FUNC17(LISTENER *r)
{
	SOCK *new_sock;
	SOCK *s;
	// Validate arguments
	if (r == NULL)
	{
		return;
	}

	FUNC2("ListenerTCPMainLoop Starts.\n");
	r->Status = LISTENER_STATUS_TRYING;

	while (true)
	{
		bool first_failed = true;
		FUNC2("Status = LISTENER_STATUS_TRYING\n");
		r->Status = LISTENER_STATUS_TRYING;

		// Try to Listen
		while (true)
		{
			UINT interval;
			// Stop flag inspection
			if (r->Halt)
			{
				// Stop
				return;
			}

			s = NULL;

			if (r->Protocol == LISTENER_TCP)
			{
				if (r->ShadowIPv6 == false)
				{
					if (r->Cedar->Server == NULL)
					{
						s = FUNC5(r->Port, r->LocalOnly, r->EnableConditionalAccept, NULL);
					}
					else
					{
						s = FUNC5(r->Port, r->LocalOnly, r->EnableConditionalAccept, &r->Cedar->Server->ListenIP);
					}
				}
				else
				{
					s = FUNC6(r->Port, r->LocalOnly);
				}
			}
			else if (r->Protocol == LISTENER_INPROC)
			{
				s = FUNC7();
			}
			else if (r->Protocol == LISTENER_RUDP)
			{
				s = FUNC8(VPN_RUDP_SVC_NAME, NULL, ListenerRUDPRpcRecvProc, NULL, 0, false, false, r->NatTGlobalUdpPort, r->RandPortId, &r->Cedar->Server->ListenIP);
			}
			else if (r->Protocol == LISTENER_ICMP)
			{
				s = FUNC8(VPN_RUDP_SVC_NAME, NULL, ListenerRUDPRpcRecvProc, NULL, FUNC11(IP_PROTO_ICMPV4),
					true, false, NULL, 0, &r->Cedar->Server->ListenIP);
			}
			else if (r->Protocol == LISTENER_DNS)
			{
				s = FUNC8(VPN_RUDP_SVC_NAME, NULL, ListenerRUDPRpcRecvProc, NULL, 53, true, true, NULL, 0, &r->Cedar->Server->ListenIP);
			}
			else if (r->Protocol == LISTENER_REVERSE)
			{
				s = FUNC9();
			}

			if (s != NULL)
			{
				// Listen success
				FUNC1(s->ref);

				FUNC10(r->lock);
				{
					r->Sock = s;
				}
				FUNC15(r->lock);

				if (r->ShadowIPv6 == false && r->Protocol == LISTENER_TCP)
				{
					FUNC13(r->Cedar, "LS_LISTENER_START_2", r->Port);
				}
				break;
			}

			// Listen failure
			if (first_failed)
			{
				first_failed = false;
				if (r->ShadowIPv6 == false && r->Protocol == LISTENER_TCP)
				{
					FUNC13(r->Cedar, "LS_LISTENER_START_3", r->Port, LISTEN_RETRY_TIME / 1000);
				}
			}

			interval = LISTEN_RETRY_TIME;

			if (r->ShadowIPv6)
			{
				if (FUNC4() == false)
				{
					interval = LISTEN_RETRY_TIME_NOIPV6;

					FUNC2("IPv6 is not supported.\n");
				}
			}

			FUNC16(r->Event, interval);

			// Stop flag inspection
			if (r->Halt)
			{
				// Stop
				FUNC2("Listener Halt.\n");
				return;
			}
		}

		r->Status = LISTENER_STATUS_LISTENING;
		FUNC2("Status = LISTENER_STATUS_LISTENING\n");

		// Stop flag inspection
		if (r->Halt)
		{
			// Stop
			goto STOP;
		}

		// Accept loop
		while (true)
		{
			// Accept
			FUNC2("Accept()\n");
			new_sock = FUNC0(s);
			if (new_sock != NULL)
			{
				// Accept success
				FUNC2("Accepted.\n");
				FUNC14(r, new_sock);
				FUNC12(new_sock);
			}
			else
			{
STOP:
				FUNC2("Accept Canceled.\n");
				// Failed to accept (socket is destroyed)
				// Close the listening socket
				FUNC3(s);
				FUNC12(s);
				s = NULL;

				FUNC10(r->lock);
				{
					if (r->Sock != NULL)
					{
						s = r->Sock;
						r->Sock = NULL;
					}
				}
				FUNC15(r->lock);

				if (s != NULL)
				{
					FUNC12(s);
				}

				s = NULL;

				break;
			}
		}

		// Stop flag inspection
		if (r->Halt)
		{
			// Stop
			FUNC2("Listener Halt.\n");
			return;
		}
	}
}