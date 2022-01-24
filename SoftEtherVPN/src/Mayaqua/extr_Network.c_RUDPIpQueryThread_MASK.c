#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  current_hostname ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_2__ {int Halt; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  My_Private_IP; int /*<<< orphan*/  Lock; int /*<<< orphan*/  SockEvent; int /*<<< orphan*/  NatT_TranId; scalar_t__ NatT_RegisterFailNum; scalar_t__ NatT_GetTokenFailNum; scalar_t__ NatT_RegisterNextTick; scalar_t__ NatT_GetTokenNextTick; int /*<<< orphan*/  NatT_IP; int /*<<< orphan*/  CurrentRegisterHostname; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ RUDP_STACK ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (void*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 void* FUNC12 () ; 
 int /*<<< orphan*/  RUDP_LOOP_WAIT_INTERVAL_S ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 () ; 
 scalar_t__ UDP_NAT_T_GET_IP_INTERVAL ; 
 scalar_t__ UDP_NAT_T_GET_IP_INTERVAL_AFTER ; 
 scalar_t__ UDP_NAT_T_GET_IP_INTERVAL_MAX ; 
 scalar_t__ UDP_NAT_T_GET_PRIVATE_IP_INTERVAL ; 
 int /*<<< orphan*/  UDP_NAT_T_GET_PRIVATE_IP_INTERVAL_AFTER_MAX ; 
 int /*<<< orphan*/  UDP_NAT_T_GET_PRIVATE_IP_INTERVAL_AFTER_MIN ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int) ; 

void FUNC21(THREAD *thread, void *param)
{
	RUDP_STACK *r;
	UINT64 next_getip_tick = 0;
	UINT64 next_getprivate_ip_tick = 0;
	UINT last_ip_hash = 0;
	void *route_change_poller = NULL;
	char current_hostname[MAX_SIZE];
	bool last_time_ip_changed = false;
	UINT num_retry = 0;
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	r = (RUDP_STACK *)param;

	last_ip_hash = FUNC5();

	route_change_poller = FUNC12();
	FUNC8(route_change_poller);

	FUNC20(current_hostname, sizeof(current_hostname));

	while (r->Halt == false)
	{
		UINT ip_hash = FUNC5();
		UINT64 now = FUNC17();
		bool ip_changed = false;

		if (ip_hash != last_ip_hash)
		{
			last_time_ip_changed = false;
		}

		if ((ip_hash != last_ip_hash) || (FUNC8(route_change_poller)))
		{
			if (last_time_ip_changed == false)
			{
				// Call all getting functions from the beginning
				// if the routing table or the IP address of this host has changed
				next_getip_tick = 0;
				next_getprivate_ip_tick = 0;
				ip_changed = true;

				last_ip_hash = ip_hash;

				last_time_ip_changed = true;
			}
		}
		else
		{
			last_time_ip_changed = false;
		}

		FUNC10(r->Lock);
		{
			if (FUNC15(current_hostname, r->CurrentRegisterHostname) != 0)
			{
				// The target host name has changed
				next_getip_tick = 0;
				FUNC16(current_hostname, sizeof(current_hostname), r->CurrentRegisterHostname);
			}
		}
		FUNC18(r->Lock);

		// Get the IP address of the NAT-T server with DNS
		if (next_getip_tick == 0 || now >= next_getip_tick)
		{
			IP ip;

			if (FUNC6(&ip, current_hostname) && FUNC9(&ip) == false)
			{
				FUNC10(r->Lock);
				{
//					Debug("%r  %r\n",&r->NatT_IP, &ip);
					if (FUNC0(&r->NatT_IP, &ip) != 0)
					{
//						WHERE;
						ip_changed = true;
						FUNC1(&r->NatT_IP, &ip, sizeof(IP));
					}
				}
				FUNC18(r->Lock);
			}

			if (FUNC9(&r->NatT_IP))
			{
				num_retry++;

				next_getip_tick = now + FUNC11((UINT64)UDP_NAT_T_GET_IP_INTERVAL * (UINT64)num_retry, (UINT64)UDP_NAT_T_GET_IP_INTERVAL_MAX);
			}
			else
			{
				next_getip_tick = now + (UINT64)UDP_NAT_T_GET_IP_INTERVAL_AFTER;
			}

			if (ip_changed)
			{
				FUNC2("NAT-T: NAT-T Server IP (%s): %r\n", current_hostname, &r->NatT_IP);

				r->NatT_GetTokenNextTick = 0;
				r->NatT_RegisterNextTick = 0;
				r->NatT_GetTokenFailNum = 0;
				r->NatT_RegisterFailNum = 0;

				r->NatT_TranId = FUNC13();

				FUNC14(r->SockEvent);
			}
		}

		// Get a private IP address of this host using TCP
		if (next_getprivate_ip_tick == 0 || now >= next_getprivate_ip_tick)
		{
			IP ip;

			if (FUNC7(&ip, false))
			{
				FUNC10(r->Lock);
				{
					FUNC1(&r->My_Private_IP, &ip, sizeof(IP));
				}
				FUNC18(r->Lock);
			}

			if (FUNC9(&r->My_Private_IP))
			{
				next_getprivate_ip_tick = now + (UINT64)UDP_NAT_T_GET_PRIVATE_IP_INTERVAL;
			}
			else
			{
				next_getprivate_ip_tick = now + (UINT64)FUNC4(UDP_NAT_T_GET_PRIVATE_IP_INTERVAL_AFTER_MIN, UDP_NAT_T_GET_PRIVATE_IP_INTERVAL_AFTER_MAX);
			}

			FUNC2("NAT-T: My Private IP: %r\n", &r->My_Private_IP);
		}

		if (r->Halt)
		{
			break;
		}

		FUNC19(r->HaltEvent, RUDP_LOOP_WAIT_INTERVAL_S);
	}

	FUNC3(route_change_poller);
}