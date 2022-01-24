#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* ProxyPort; int /*<<< orphan*/  ProxyIpAddress6; void* ProxyIpAddress; void* ServerPort; int /*<<< orphan*/  ServerIpAddress6; void* ServerIpAddress; void* ClientPort; int /*<<< orphan*/  ClientIpAddress6; void* ClientIpAddress; void* ServerProductBuild; void* ServerProductVer; void* ClientProductBuild; void* ClientProductVer; int /*<<< orphan*/  UniqueId; int /*<<< orphan*/  HubName; int /*<<< orphan*/  ProxyHostname; int /*<<< orphan*/  ServerHostname; int /*<<< orphan*/  ClientHostname; int /*<<< orphan*/  ClientOsProductId; int /*<<< orphan*/  ClientOsVer; int /*<<< orphan*/  ClientOsName; int /*<<< orphan*/  ServerProductName; int /*<<< orphan*/  ClientProductName; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ NODE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(NODE_INFO *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(t, sizeof(NODE_INFO));
	FUNC3(p, "ClientProductName", t->ClientProductName, sizeof(t->ClientProductName));
	FUNC3(p, "ServerProductName", t->ServerProductName, sizeof(t->ServerProductName));
	FUNC3(p, "ClientOsName", t->ClientOsName, sizeof(t->ClientOsName));
	FUNC3(p, "ClientOsVer", t->ClientOsVer, sizeof(t->ClientOsVer));
	FUNC3(p, "ClientOsProductId", t->ClientOsProductId, sizeof(t->ClientOsProductId));
	FUNC3(p, "ClientHostname", t->ClientHostname, sizeof(t->ClientHostname));
	FUNC3(p, "ServerHostname", t->ServerHostname, sizeof(t->ServerHostname));
	FUNC3(p, "ProxyHostname", t->ProxyHostname, sizeof(t->ProxyHostname));
	FUNC3(p, "HubName", t->HubName, sizeof(t->HubName));
	FUNC0(p, "UniqueId", t->UniqueId, sizeof(t->UniqueId));

	t->ClientProductVer = FUNC1(p, "ClientProductVer");
	t->ClientProductBuild = FUNC1(p, "ClientProductBuild");
	t->ServerProductVer = FUNC1(p, "ServerProductVer");
	t->ServerProductBuild = FUNC1(p, "ServerProductBuild");
	t->ClientIpAddress = FUNC2(p, "ClientIpAddress");
	FUNC0(p, "ClientIpAddress6", t->ClientIpAddress6, sizeof(t->ClientIpAddress6));
	t->ClientPort = FUNC1(p, "ClientPort");
	t->ServerIpAddress = FUNC2(p, "ServerIpAddress");
	FUNC0(p, "ServerIpAddress6", t->ServerIpAddress6, sizeof(t->ServerIpAddress6));
	t->ServerPort = FUNC1(p, "ServerPort2");
	t->ProxyIpAddress = FUNC2(p, "ProxyIpAddress");
	FUNC0(p, "ProxyIpAddress6", t->ProxyIpAddress6, sizeof(t->ProxyIpAddress6));
	t->ProxyPort = FUNC1(p, "ProxyPort");
}