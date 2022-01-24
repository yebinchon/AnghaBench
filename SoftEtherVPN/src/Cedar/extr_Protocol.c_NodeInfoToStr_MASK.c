#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  unique_id ;
typedef  int /*<<< orphan*/  server_ip ;
typedef  int /*<<< orphan*/  proxy_ip ;
typedef  int /*<<< orphan*/  client_ip ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  HubName; int /*<<< orphan*/  ProxyPort; int /*<<< orphan*/  ProxyHostname; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerHostname; int /*<<< orphan*/  ClientPort; int /*<<< orphan*/  ClientHostname; int /*<<< orphan*/  ClientOsProductId; int /*<<< orphan*/  ClientOsVer; int /*<<< orphan*/  ClientOsName; int /*<<< orphan*/  ServerProductBuild; int /*<<< orphan*/  ServerProductVer; int /*<<< orphan*/  ServerProductName; int /*<<< orphan*/  ClientProductBuild; int /*<<< orphan*/  ClientProductVer; int /*<<< orphan*/  ClientProductName; int /*<<< orphan*/  UniqueId; int /*<<< orphan*/  ProxyIpAddress6; int /*<<< orphan*/  ProxyIpAddress; int /*<<< orphan*/  ServerIpAddress6; int /*<<< orphan*/  ServerIpAddress; int /*<<< orphan*/  ClientIpAddress6; int /*<<< orphan*/  ClientIpAddress; } ;
typedef  TYPE_1__ NODE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(wchar_t *str, UINT size, NODE_INFO *info)
{
	char client_ip[128], server_ip[128], proxy_ip[128], unique_id[128];
	// Validate arguments
	if (str == NULL || info == NULL)
	{
		return;
	}

	FUNC2(client_ip, sizeof(client_ip), info->ClientIpAddress, info->ClientIpAddress6);
	FUNC2(server_ip, sizeof(server_ip), info->ServerIpAddress, info->ServerIpAddress6);
	FUNC2(proxy_ip, sizeof(proxy_ip), info->ProxyIpAddress, info->ProxyIpAddress6);
	FUNC0(unique_id, sizeof(unique_id), info->UniqueId, sizeof(info->UniqueId));

	FUNC3(str, size, FUNC4("LS_NODE_INFO_TAG"), info->ClientProductName,
		FUNC1(info->ClientProductVer), FUNC1(info->ClientProductBuild),
		info->ServerProductName, FUNC1(info->ServerProductVer), FUNC1(info->ServerProductBuild),
		info->ClientOsName, info->ClientOsVer, info->ClientOsProductId,
		info->ClientHostname, client_ip, FUNC1(info->ClientPort),
		info->ServerHostname, server_ip, FUNC1(info->ServerPort),
		info->ProxyHostname, proxy_ip, FUNC1(info->ProxyPort),
		info->HubName, unique_id);
}