#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  last_t ;
typedef  int /*<<< orphan*/  ip ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_11__ {TYPE_1__* AzureClient; } ;
struct TYPE_10__ {int Halt; scalar_t__ NextRegisterTick_IPv4; scalar_t__ NextRegisterTick_IPv6; scalar_t__ NextGetMyIpTick_IPv4; scalar_t__ NextGetMyIpTick_IPv6; scalar_t__ Err_IPv4_GetMyIp; char* LastMyIPv4; scalar_t__ Err_IPv6_GetMyIp; char* LastMyIPv6; scalar_t__ Err_IPv4; scalar_t__ Err_IPv6; int KeyChanged; int /*<<< orphan*/  Event; TYPE_2__* Cedar; int /*<<< orphan*/  InternetSetting; } ;
struct TYPE_9__ {TYPE_4__* Server; } ;
struct TYPE_8__ {scalar_t__ DDnsTriggerInt; int /*<<< orphan*/  IpStatusRevision; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  INTERRUPT_MANAGER ;
typedef  char INTERNET_SETTING ;
typedef  int /*<<< orphan*/  DDNS_CLIENT_STATUS ;
typedef  TYPE_3__ DDNS_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (TYPE_3__*,int,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DDNS_GETMYIP_INTERVAL_NG_MAX ; 
 int /*<<< orphan*/  DDNS_GETMYIP_INTERVAL_NG_MIN ; 
 int /*<<< orphan*/  DDNS_GETMYIP_INTERVAL_OK_MAX ; 
 int /*<<< orphan*/  DDNS_GETMYIP_INTERVAL_OK_MIN ; 
 int /*<<< orphan*/  DDNS_REGISTER_INTERVAL_NG_MAX ; 
 int /*<<< orphan*/  DDNS_REGISTER_INTERVAL_NG_MIN ; 
 int /*<<< orphan*/  DDNS_REGISTER_INTERVAL_OK_MAX ; 
 int /*<<< orphan*/  DDNS_REGISTER_INTERVAL_OK_MIN ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (char*) ; 
 scalar_t__ FUNC13 (void*) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 void* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*) ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (char*,int) ; 

void FUNC23(THREAD *thread, void *param)
{
	DDNS_CLIENT *c;
	INTERRUPT_MANAGER *interrupt;
	UINT last_ip_hash = 0;
	void *route_change_poller = NULL;
	bool last_time_ip_changed = false;
	UINT last_azure_ddns_trigger_int = 0;
	UINT last_vgs_ddns_trigger_int = 0;
	UINT n;
	INTERNET_SETTING last_t;
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	c = (DDNS_CLIENT *)param;

	interrupt = FUNC15();

	route_change_poller = FUNC16();
	FUNC13(route_change_poller);

	FUNC22(&last_t, sizeof(last_t));

	n = 0;

	while (c->Halt == false)
	{
		UINT ip_hash = FUNC10();
		UINT interval;
		UINT64 now = FUNC20();
		bool ip_changed = false;
		bool azure_client_triggered = false;
		bool internet_setting_changed = false;
		bool vgs_server_triggered = false;


		if (c->Cedar->Server != NULL && c->Cedar->Server->AzureClient != NULL)
		{
			if (c->Cedar->Server->AzureClient->DDnsTriggerInt != last_azure_ddns_trigger_int)
			{
				azure_client_triggered = true;
				last_azure_ddns_trigger_int = c->Cedar->Server->AzureClient->DDnsTriggerInt;
				last_time_ip_changed = false;
				FUNC6("DDNS Thread Triggered by AzureClient.\n");
			}
		}

		if (FUNC1(&last_t, &c->InternetSetting, sizeof(INTERNET_SETTING)) != 0)
		{
			FUNC2(&last_t, &c->InternetSetting, sizeof(INTERNET_SETTING));
			internet_setting_changed = true;
			last_time_ip_changed = false;
		}

		if (ip_hash != last_ip_hash)
		{
			last_time_ip_changed = false;
			FUNC6("DDNS Thread Triggered by IP Hash Changed.\n");
		}

		if ((ip_hash != last_ip_hash) || (FUNC13(route_change_poller)) || azure_client_triggered || internet_setting_changed || vgs_server_triggered)
		{
			if (last_time_ip_changed == false)
			{
				// Call all getting functions from the beginning if the routing
				//  table or the IP address of this host has changed
				c->NextRegisterTick_IPv4 = 0;
				c->NextRegisterTick_IPv6 = 0;
				c->NextGetMyIpTick_IPv4 = 0;
				c->NextGetMyIpTick_IPv6 = 0;

				last_ip_hash = ip_hash;

				last_time_ip_changed = true;

				ip_changed = true;

				FUNC6("DDNS Internet Condition Changed.\n");
			}
		}
		else
		{
			last_time_ip_changed = false;
		}

		if ((n++) >= 1)
		{
			// Self IPv4 address acquisition
			if (c->NextGetMyIpTick_IPv4 == 0 || now >= c->NextGetMyIpTick_IPv4)
			{
				UINT next_interval;
				char ip[MAX_SIZE];

				FUNC22(ip, sizeof(ip));
				c->Err_IPv4_GetMyIp = FUNC3(c, false, ip, sizeof(ip), NULL);

				if (c->Err_IPv4_GetMyIp == ERR_NO_ERROR)
				{
					if (FUNC18(c->LastMyIPv4, ip) != 0)
					{
						ip_changed = true;
						FUNC19(c->LastMyIPv4, sizeof(c->LastMyIPv4), ip);
					}

					next_interval = FUNC9(DDNS_GETMYIP_INTERVAL_OK_MIN, DDNS_GETMYIP_INTERVAL_OK_MAX);
				}
				else
				{
					if (FUNC12(c->LastMyIPv4) == false)
					{
						ip_changed = true;
					}

					FUNC22(c->LastMyIPv4, sizeof(c->LastMyIPv4));
					next_interval = FUNC9(DDNS_GETMYIP_INTERVAL_NG_MIN, DDNS_GETMYIP_INTERVAL_NG_MAX);
				}

				c->NextGetMyIpTick_IPv4 = FUNC20() + (UINT64)next_interval;

				FUNC0(interrupt, c->NextGetMyIpTick_IPv4);
			}

			// Self IPv6 address acquisition
			if (c->NextGetMyIpTick_IPv6 == 0 || now >= c->NextGetMyIpTick_IPv6)
			{
				UINT next_interval;
				char ip[MAX_SIZE];

				FUNC22(ip, sizeof(ip));
				c->Err_IPv6_GetMyIp = FUNC3(c, true, ip, sizeof(ip), NULL);

				if (c->Err_IPv6_GetMyIp == ERR_NO_ERROR)
				{
					if (FUNC18(c->LastMyIPv6, ip) != 0)
					{
						ip_changed = true;
						FUNC19(c->LastMyIPv6, sizeof(c->LastMyIPv6), ip);
					}

					next_interval = FUNC9(DDNS_GETMYIP_INTERVAL_OK_MIN, DDNS_GETMYIP_INTERVAL_OK_MAX);
				}
				else
				{
					if (FUNC12(c->LastMyIPv6) == false)
					{
						ip_changed = true;
					}

					FUNC22(c->LastMyIPv6, sizeof(c->LastMyIPv6));
					next_interval = FUNC9(DDNS_GETMYIP_INTERVAL_NG_MIN, DDNS_GETMYIP_INTERVAL_NG_MAX);
				}

				c->NextGetMyIpTick_IPv6 = FUNC20() + (UINT64)next_interval;

				FUNC0(interrupt, c->NextGetMyIpTick_IPv6);
			}
		}

		if (ip_changed)
		{
			c->NextRegisterTick_IPv4 = 0;
			c->NextRegisterTick_IPv6 = 0;
		}

		// IPv4 host registration
		if (c->NextRegisterTick_IPv4 == 0 || now >= c->NextRegisterTick_IPv4)
		{
			UINT next_interval;

			c->Err_IPv4 = FUNC5(c, false, NULL, NULL);

			if (c->Err_IPv4 == ERR_NO_ERROR)
			{
				next_interval = FUNC9(DDNS_REGISTER_INTERVAL_OK_MIN, DDNS_REGISTER_INTERVAL_OK_MAX);
			}
			else
			{
				next_interval = FUNC9(DDNS_REGISTER_INTERVAL_NG_MIN, DDNS_REGISTER_INTERVAL_NG_MAX);
			}
			//next_interval = 0;

			c->NextRegisterTick_IPv4 = FUNC20() + (UINT64)next_interval;

			if (true)
			{
				DDNS_CLIENT_STATUS st;

				FUNC4(c, &st);

				FUNC17(c->Cedar->Server, &st);
			}

			FUNC0(interrupt, c->NextRegisterTick_IPv4);
		}

		if (c->Halt)
		{
			break;
		}

		// IPv6 host registration
		if (c->NextRegisterTick_IPv6 == 0 || now >= c->NextRegisterTick_IPv6)
		{
			UINT next_interval;

			c->Err_IPv6 = FUNC5(c, true, NULL, NULL);

			if (c->Err_IPv6 == ERR_NO_ERROR)
			{
				next_interval = FUNC9(DDNS_REGISTER_INTERVAL_OK_MIN, DDNS_REGISTER_INTERVAL_OK_MAX);
			}
			else
			{
				next_interval = FUNC9(DDNS_REGISTER_INTERVAL_NG_MIN, DDNS_REGISTER_INTERVAL_NG_MAX);
			}

			c->NextRegisterTick_IPv6 = FUNC20() + (UINT64)next_interval;

			if (true)
			{
				DDNS_CLIENT_STATUS st;

				FUNC4(c, &st);

				FUNC17(c->Cedar->Server, &st);
			}

			FUNC0(interrupt, c->NextRegisterTick_IPv6);
		}

		interval = FUNC11(interrupt);
		interval = FUNC14(interval, 1234);

		if (n == 1)
		{
			interval = 0;
		}

		if (c->Halt)
		{
			break;
		}

		if (c->KeyChanged)
		{
			c->KeyChanged = false;
			c->NextRegisterTick_IPv4 = c->NextRegisterTick_IPv6 = 0;

			interval = 0;
		}

		if (last_time_ip_changed)
		{
			if (c->Cedar->Server != NULL && c->Cedar->Server->AzureClient != NULL)
			{
				c->Cedar->Server->AzureClient->IpStatusRevision++;
			}
		}

		FUNC21(c->Event, interval);
	}

	FUNC8(route_change_poller);
	FUNC7(interrupt);
}