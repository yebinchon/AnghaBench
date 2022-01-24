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
struct TYPE_3__ {int /*<<< orphan*/  ProxyPort; int /*<<< orphan*/  ProxyIpAddress6; int /*<<< orphan*/  ProxyIpAddress; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerIpAddress6; int /*<<< orphan*/  ServerIpAddress; int /*<<< orphan*/  ClientPort; int /*<<< orphan*/  ClientIpAddress6; int /*<<< orphan*/  ClientIpAddress; int /*<<< orphan*/  ServerProductBuild; int /*<<< orphan*/  ServerProductVer; int /*<<< orphan*/  ClientProductBuild; int /*<<< orphan*/  ClientProductVer; int /*<<< orphan*/  UniqueId; int /*<<< orphan*/  HubName; int /*<<< orphan*/  ProxyHostname; int /*<<< orphan*/  ServerHostname; int /*<<< orphan*/  ClientHostname; int /*<<< orphan*/  ClientOsProductId; int /*<<< orphan*/  ClientOsVer; int /*<<< orphan*/  ClientOsName; int /*<<< orphan*/  ServerProductName; int /*<<< orphan*/  ClientProductName; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ NODE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC4(PACK *p, NODE_INFO *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(p, "ClientProductName", t->ClientProductName);
	FUNC3(p, "ServerProductName", t->ServerProductName);
	FUNC3(p, "ClientOsName", t->ClientOsName);
	FUNC3(p, "ClientOsVer", t->ClientOsVer);
	FUNC3(p, "ClientOsProductId", t->ClientOsProductId);
	FUNC3(p, "ClientHostname", t->ClientHostname);
	FUNC3(p, "ServerHostname", t->ServerHostname);
	FUNC3(p, "ProxyHostname", t->ProxyHostname);
	FUNC3(p, "HubName", t->HubName);
	FUNC0(p, "UniqueId", t->UniqueId, sizeof(t->UniqueId));

	FUNC1(p, "ClientProductVer", t->ClientProductVer);
	FUNC1(p, "ClientProductBuild", t->ClientProductBuild);
	FUNC1(p, "ServerProductVer", t->ServerProductVer);
	FUNC1(p, "ServerProductBuild", t->ServerProductBuild);
	FUNC2(p, "ClientIpAddress", t->ClientIpAddress);
	FUNC0(p, "ClientIpAddress6", t->ClientIpAddress6, sizeof(t->ClientIpAddress6));
	FUNC1(p, "ClientPort", t->ClientPort);
	FUNC2(p, "ServerIpAddress", t->ServerIpAddress);
	FUNC0(p, "ServerIpAddress6", t->ServerIpAddress6, sizeof(t->ServerIpAddress6));
	FUNC1(p, "ServerPort2", t->ServerPort);
	FUNC2(p, "ProxyIpAddress", t->ProxyIpAddress);
	FUNC0(p, "ProxyIpAddress6", t->ProxyIpAddress6, sizeof(t->ProxyIpAddress6));
	FUNC1(p, "ProxyPort", t->ProxyPort);
}