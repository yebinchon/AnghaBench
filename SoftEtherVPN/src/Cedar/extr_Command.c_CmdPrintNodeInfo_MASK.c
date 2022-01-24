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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_3__ {char* ClientProductName; char* ClientOsName; char* ClientOsVer; char* ClientOsProductId; char* ClientHostname; char* ServerHostname; char* ProxyHostname; int /*<<< orphan*/  ProxyPort; int /*<<< orphan*/  ProxyIpAddress6; int /*<<< orphan*/  ProxyIpAddress; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerIpAddress6; int /*<<< orphan*/  ServerIpAddress; int /*<<< orphan*/  ClientPort; int /*<<< orphan*/  ClientIpAddress6; int /*<<< orphan*/  ClientIpAddress; int /*<<< orphan*/  ClientProductBuild; int /*<<< orphan*/  ClientProductVer; } ;
typedef  TYPE_1__ NODE_INFO ;
typedef  int /*<<< orphan*/  CT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(CT *ct, NODE_INFO *info)
{
	wchar_t tmp[MAX_SIZE];
	char str[MAX_SIZE];
	// Validate arguments
	if (ct == NULL || info == NULL)
	{
		return;
	}

	FUNC4(tmp, sizeof(tmp), info->ClientProductName);
	FUNC0(ct, FUNC7("SM_NODE_CLIENT_NAME"), tmp);

	FUNC5(tmp, sizeof(tmp), L"%u.%02u", FUNC1(info->ClientProductVer) / 100, FUNC1(info->ClientProductVer) % 100);
	FUNC0(ct, FUNC7("SM_NODE_CLIENT_VER"), tmp);

	FUNC5(tmp, sizeof(tmp), L"Build %u", FUNC1(info->ClientProductBuild));
	FUNC0(ct, FUNC7("SM_NODE_CLIENT_BUILD"), tmp);

	FUNC4(tmp, sizeof(tmp), info->ClientOsName);
	FUNC0(ct, FUNC7("SM_NODE_CLIENT_OS_NAME"), tmp);

	FUNC4(tmp, sizeof(tmp), info->ClientOsVer);
	FUNC0(ct, FUNC7("SM_NODE_CLIENT_OS_VER"), tmp);

	FUNC4(tmp, sizeof(tmp), info->ClientOsProductId);
	FUNC0(ct, FUNC7("SM_NODE_CLIENT_OS_PID"), tmp);

	FUNC4(tmp, sizeof(tmp), info->ClientHostname);
	FUNC0(ct, FUNC7("SM_NODE_CLIENT_HOST"), tmp);

	FUNC2(str, sizeof(str), info->ClientIpAddress, info->ClientIpAddress6);
	FUNC4(tmp, sizeof(tmp), str);
	FUNC0(ct, FUNC7("SM_NODE_CLIENT_IP"), tmp);

	FUNC6(tmp, FUNC1(info->ClientPort));
	FUNC0(ct, FUNC7("SM_NODE_CLIENT_PORT"), tmp);

	FUNC4(tmp, sizeof(tmp), info->ServerHostname);
	FUNC0(ct, FUNC7("SM_NODE_SERVER_HOST"), tmp);

	FUNC2(str, sizeof(str), info->ServerIpAddress, info->ServerIpAddress6);
	FUNC4(tmp, sizeof(tmp), str);
	FUNC0(ct, FUNC7("SM_NODE_SERVER_IP"), tmp);

	FUNC6(tmp, FUNC1(info->ServerPort));
	FUNC0(ct, FUNC7("SM_NODE_SERVER_PORT"), tmp);

	if (FUNC3(info->ProxyHostname) != 0)
	{
		FUNC4(tmp, sizeof(tmp), info->ProxyHostname);
		FUNC0(ct, FUNC7("SM_NODE_PROXY_HOSTNAME"), tmp);

		FUNC2(str, sizeof(str), info->ProxyIpAddress, info->ProxyIpAddress6);
		FUNC4(tmp, sizeof(tmp), str);
		FUNC0(ct, FUNC7("SM_NODE_PROXY_IP"), tmp);

		FUNC6(tmp, FUNC1(info->ProxyPort));
		FUNC0(ct, FUNC7("SM_NODE_PROXY_PORT"), tmp);
	}
}