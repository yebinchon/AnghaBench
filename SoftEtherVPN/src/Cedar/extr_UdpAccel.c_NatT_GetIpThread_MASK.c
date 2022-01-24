#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  hostname ;
typedef  int UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {int NatT_Halt; int NatT_IP_Changed; int /*<<< orphan*/  NatT_HaltEvent; int /*<<< orphan*/  NatT_Lock; int /*<<< orphan*/  NatT_IP; } ;
typedef  TYPE_1__ UDP_ACCEL ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_2__ IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ UDP_NAT_T_GET_IP_INTERVAL ; 
 scalar_t__ UDP_NAT_T_GET_IP_INTERVAL_MAX ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC13(THREAD *thread, void *param)
{
	UDP_ACCEL *a;
	char hostname[MAX_SIZE];
	static IP dummy_ip = {0};
	UINT num_retry = 0;
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	a = (UDP_ACCEL *)param;

	if (FUNC4(&dummy_ip))
	{
		FUNC10(&dummy_ip, 11, FUNC9(), FUNC9(), FUNC9());
	}

	FUNC8(hostname, sizeof(hostname), &dummy_ip);

	while (a->NatT_Halt == false)
	{
		IP ip;
		UINT wait_time = UDP_NAT_T_GET_IP_INTERVAL;

		// Get the IP address
		bool ret = FUNC2(&ip, hostname, 0, &a->NatT_Halt);

		if (ret && (FUNC5(&ip) == false))
		{
			char tmp[128];

			// Success to get
			FUNC6(a->NatT_Lock);
			{
				FUNC0(&a->NatT_IP, &ip, sizeof(IP));
			}
			FUNC11(a->NatT_Lock);

			FUNC3(tmp, sizeof(tmp), &ip);
			FUNC1("NAT-T IP Address Resolved: %s = %s\n", hostname, tmp);

			a->NatT_IP_Changed = true;

			break;
		}

		// Fail to get
		num_retry++;

		wait_time = (UINT)(FUNC7((UINT64)UDP_NAT_T_GET_IP_INTERVAL * (UINT64)num_retry, (UINT64)UDP_NAT_T_GET_IP_INTERVAL_MAX));

		FUNC12(a->NatT_HaltEvent, wait_time);
	}
}