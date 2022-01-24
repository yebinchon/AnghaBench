#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  b ;
typedef  int UINT ;
struct TYPE_14__ {int Value; } ;
struct TYPE_13__ {int ServerBuildInt; scalar_t__ ServerType; int IsBridgeSupportedOs; int IsWinPcapNeeded; int /*<<< orphan*/  ServerProductName; } ;
struct TYPE_12__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ RPC_SERVER_INFO ;
typedef  TYPE_2__ RPC_BRIDGE_SUPPORT ;
typedef  int /*<<< orphan*/  RPC ;
typedef  int /*<<< orphan*/  CAPSLIST ;
typedef  TYPE_4__ CAPS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC6 (char*) ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC13 (int) ; 

CAPSLIST *FUNC14(RPC *rpc)
{
	RPC_SERVER_INFO info;
	CAPSLIST *t;
	bool is_bridge = false;
	// Validate arguments
	if (rpc == NULL)
	{
		return NULL;
	}

	FUNC12(&info, sizeof(info));
	FUNC10(rpc, &info);

	t = FUNC13(sizeof(CAPSLIST));

	// Try to get Caps by RPC
	if (FUNC9(rpc, t) != ERR_NO_ERROR)
	{
		UINT build;

		FUNC2(t);
		t = FUNC7();

		// Since acquisition of Caps went wrong, get build number
		build = info.ServerBuildInt;

		is_bridge = (FUNC11(info.ServerProductName, "bridge", 0, false) == INFINITE) ? false : true;

		FUNC1(t, "i_max_packet_size", 1514);

		if (is_bridge == false)
		{
			FUNC1(t, "i_max_hubs", 4096);
			FUNC1(t, "i_max_sessions", 4096);

			if (info.ServerType != SERVER_TYPE_FARM_MEMBER)
			{
				FUNC1(t, "i_max_users_per_hub", 10000);
				FUNC1(t, "i_max_groups_per_hub", 10000);
				FUNC1(t, "i_max_access_lists", 4096);
			}
			else
			{
				FUNC1(t, "i_max_users_per_hub", 0);
				FUNC1(t, "i_max_groups_per_hub", 0);
				FUNC1(t, "i_max_access_lists", 0);
			}
		}
		else
		{
			FUNC1(t, "i_max_hubs", 0);
			FUNC1(t, "i_max_sessions", 0);
			FUNC1(t, "i_max_users_per_hub", 0);
			FUNC1(t, "i_max_groups_per_hub", 0);
			FUNC1(t, "i_max_access_lists", 0);
		}

		FUNC1(t, "i_max_mac_tables", 10000);
		FUNC1(t, "i_max_ip_tables", 10000);

		if (info.ServerType == SERVER_TYPE_STANDALONE)
		{
			FUNC0(t, "b_support_securenat", (build >= 3600) ? true : false);
			FUNC1(t, "i_max_secnat_tables", 4096);
		}
		else
		{
			FUNC0(t, "b_support_securenat", false);
			FUNC1(t, "i_max_secnat_tables", 0);
		}

		if (is_bridge)
		{
			FUNC0(t, "b_bridge", true);
		}
		else if (info.ServerType == SERVER_TYPE_STANDALONE)
		{
			FUNC0(t, "b_standalone", true);
		}
		else if (info.ServerType == SERVER_TYPE_FARM_CONTROLLER)
		{
			FUNC0(t, "b_cluster_controller", true);
		}
		else
		{
			FUNC0(t, "b_cluster_member", true);
		}

		FUNC0(t, "b_support_config_hub", info.ServerType != SERVER_TYPE_FARM_MEMBER &&
			is_bridge == false);

		FUNC0(t, "b_vpn_client_connect", is_bridge == false ? true : false);

		FUNC0(t, "b_support_radius", info.ServerType != SERVER_TYPE_FARM_MEMBER &&
			is_bridge == false);

		if (build >= 3600)
		{
			RPC_BRIDGE_SUPPORT b;
			FUNC12(&b, sizeof(b));
			if (FUNC8(rpc, &b) == ERR_NO_ERROR)
			{
				FUNC0(t, "b_local_bridge", b.IsBridgeSupportedOs);
				FUNC0(t, "b_must_install_pcap", b.IsWinPcapNeeded);
			}
			else
			{
				FUNC0(t, "b_local_bridge", false);
				FUNC0(t, "b_must_install_pcap", false);
			}
		}
		else
		{
			FUNC0(t, "b_local_bridge", false);
			FUNC0(t, "b_must_install_pcap", false);
		}

		FUNC0(t, "b_tap_supported", false);

		if (info.ServerType == SERVER_TYPE_STANDALONE)
		{
			FUNC0(t, "b_support_cascade", true);
		}
		else
		{
			FUNC0(t, "b_support_cascade", false);
		}

		FUNC0(t, "b_support_cascade_cert", false);
		FUNC0(t, "b_support_config_log", info.ServerType != SERVER_TYPE_FARM_MEMBER);
		FUNC0(t, "b_support_autodelete", false);
	}
	else
	{
		// Success getting Caps
		if (info.ServerBuildInt <= 4350)
		{
			if (is_bridge == false)
			{
				// b_support_cluster should be true for build 4300 or earlier
				CAPS *caps = FUNC5(t, "b_support_cluster");
				if (caps == NULL)
				{
					FUNC0(t, "b_support_cluster", true);
				}
				else
				{
					caps->Value = 1;
				}
			}
		}
	}

	if (true)
	{
		TOKEN_LIST *names;

		// Fill items that doesn't exist in server-side as false
		names = FUNC6("CT_b_");
		if (names != NULL)
		{
			UINT i;
			for (i = 0;i < names->NumTokens;i++)
			{
				char *name = names->Token[i] + 3;

				if (FUNC5(t, name) == NULL)
				{
					FUNC0(t, name, false);
				}
			}

			FUNC4(names);
		}
	}

	FUNC3(&info);

	return t;
}