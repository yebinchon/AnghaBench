#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hostname ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {char* HostName; int IPv6; int Ok; int /*<<< orphan*/  Ip; scalar_t__ Timeout; int /*<<< orphan*/  Ref; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ GETIP_THREAD_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE ; 
 scalar_t__ FLETS_DETECT_TYPE_EAST_NGN_PRIVATE ; 
 scalar_t__ FLETS_DETECT_TYPE_WEST_NGN_PRIVATE ; 
 int /*<<< orphan*/ * FLETS_NGN_EAST_DNS_PROXY_HOSTNAME ; 
 int /*<<< orphan*/ * FLETS_NGN_WEST_DNS_PROXY_HOSTNAME ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  GetIP4Ex6ExThread ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ TIMEOUT_GETIP ; 
 scalar_t__ FUNC21 () ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,int) ; 
 TYPE_1__* FUNC25 (int) ; 
 int /*<<< orphan*/  getip_thread_counter ; 

bool FUNC26(IP *ip, char *hostname_arg, UINT timeout, bool ipv6, bool *cancel, bool only_direct_dns)
{
	GETIP_THREAD_PARAM *p;
	THREAD *t;
	bool ret = false;
	UINT64 start_tick = 0;
	UINT64 end_tick = 0;
	UINT64 spent_time = 0;
	UINT64 now;
	UINT n;
	bool use_dns_proxy = false;
	char hostname[260];
	UINT i;
	bool timed_out;
	// Validate arguments
	if (ip == NULL || hostname_arg == NULL)
	{
		return false;
	}
	if (timeout == 0)
	{
		timeout = TIMEOUT_GETIP;
	}

	FUNC24(hostname, sizeof(hostname));
	FUNC19(hostname, sizeof(hostname), hostname_arg);

	i = FUNC17(hostname, "/", 0, true);
	if (i != INFINITE)
	{
		hostname[i] = 0;
	}

	if (ipv6 == false)
	{
		IP ip2;

		if (FUNC20(&ip2, hostname) && FUNC10(&ip2) == false)
		{
			if (FUNC7(&ip2))
			{
				// IPv4 address direct specification
				FUNC0(ip, &ip2, sizeof(IP));
				return true;
			}
			else
			{
				// IPv6 address direct specification
				return false;
			}
		}
	}
	else
	{
		IP ip2;

		if (FUNC20(&ip2, hostname) && FUNC10(&ip2) == false)
		{
			if (FUNC8(&ip2))
			{
				// IPv6 address direct specification
				FUNC0(ip, &ip2, sizeof(IP));
				return true;
			}
			else
			{
				// IPv4 address direct specification
				return false;
			}
		}
	}

	if (only_direct_dns == false)
	{
		if (ipv6 == false)
		{
			if (FUNC9())
			{
				use_dns_proxy = true;
			}
		}
	}


	// check the quota
	start_tick = FUNC21();
	end_tick = start_tick + (UINT64)timeout;

	n = 0;

	timed_out = false;

	while (true)
	{
		UINT64 now = FUNC21();
		UINT64 remain;
		UINT remain32;

		if (FUNC4() > FUNC3())
		{
			// below the quota
			break;
		}

		if (now >= end_tick)
		{
			// timeouted
			timed_out = true;
			break;
		}

		if (cancel != NULL && (*cancel))
		{
			// cancelled
			timed_out = true;
			break;
		}

		remain = end_tick - now;
		remain32 = FUNC11((UINT)remain, 100);

		FUNC18(remain32);
		n++;
	}

	now = FUNC21();
	spent_time = now - start_tick;

	if (n == 0)
	{
		spent_time = 0;
	}

	if ((UINT)spent_time >= timeout)
	{
		timed_out = true;
	}

	if (timed_out)
	{
		IP ip2;

		// timed out, cancelled
		if (FUNC14(&ip2, hostname))
		{
			ret = true;

			FUNC0(ip, &ip2, sizeof(IP));
		}

		FUNC1("GetIP4Ex6Ex2: Worker thread quota exceeded: max=%u current=%u\n",
			FUNC4(), FUNC3());

		return ret;
	}

	// Increment the counter
	FUNC6(getip_thread_counter);

	if (spent_time != 0)
	{
		FUNC1("GetIP4Ex6Ex2: Waited for %u msecs to create a worker thread.\n",
			spent_time);
	}

	timeout -= (UINT)spent_time;

	p = FUNC25(sizeof(GETIP_THREAD_PARAM));
	p->Ref = FUNC12();
	FUNC19(p->HostName, sizeof(p->HostName), hostname);
	p->IPv6 = ipv6;
	p->Timeout = timeout;
	p->Ok = false;

	t = FUNC13(GetIP4Ex6ExThread, p);
	FUNC23(t);

	if (cancel == NULL)
	{
		FUNC22(t, timeout);
	}
	else
	{
		start_tick = FUNC21();
		end_tick = start_tick + (UINT64)timeout;

		while (true)
		{
			UINT64 now = FUNC21();
			UINT64 remain;
			UINT remain32;

			if (*cancel)
			{
				break;
			}

			if (now >= end_tick)
			{
				break;
			}

			remain = end_tick - now;
			remain32 = FUNC11((UINT)remain, 100);

			if (FUNC22(t, remain32))
			{
				break;
			}
		}
	}

	FUNC16(t);

	if (p->Ok)
	{
		ret = true;
		FUNC0(ip, &p->Ip, sizeof(IP));
	}
	else
	{
		IP ip2;

#if	0
		if (only_direct_dns == false)
		{
			if (ipv6)
			{
				UINT flets_type = DetectFletsType();

				// if I'm in the FLETs of NTT East,
				// try to get an IP address using the DNS proxy server
				if ((flets_type & FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE) &&
					GetIPViaDnsProxyForJapanFlets(ip, hostname, true, 0, cancel, NULL))
				{
					// B FLETs
					ret = true;
				}
				else if ((flets_type & FLETS_DETECT_TYPE_EAST_NGN_PRIVATE) &&
					GetIPViaDnsProxyForJapanFlets(ip, hostname, true, 0, cancel, FLETS_NGN_EAST_DNS_PROXY_HOSTNAME))
				{
					// FLET'S Hikar-Next (NTT East)
					ret = true;
				}
				else if ((flets_type & FLETS_DETECT_TYPE_WEST_NGN_PRIVATE) &&
					GetIPViaDnsProxyForJapanFlets(ip, hostname, true, 0, cancel, FLETS_NGN_WEST_DNS_PROXY_HOSTNAME))
				{
					// FLET'S Hikar-Next (NTT West)
					ret = true;
				}
			}
		}
#endif

		if (FUNC14(&ip2, hostname))
		{
			ret = true;

			FUNC0(ip, &ip2, sizeof(IP));
		}
	}


	FUNC15(p);

	return ret;
}