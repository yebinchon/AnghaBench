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
typedef  int /*<<< orphan*/  tmp ;
typedef  void* UINT ;
struct TYPE_3__ {scalar_t__ IsIPv6; int Inited; void* YourCookie; void* MyCookie; int /*<<< orphan*/  Now; void* YourPort; int /*<<< orphan*/  YourIp2; int /*<<< orphan*/  YourIp; int /*<<< orphan*/ * YourKey; } ;
typedef  TYPE_1__ UDP_ACCEL ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int UDP_ACCELERATION_COMMON_KEY_SIZE ; 

bool FUNC5(UDP_ACCEL *a, UCHAR *server_key, IP *server_ip, UINT server_port, UINT server_cookie, UINT client_cookie, IP *server_ip_2)
{
	char tmp[MAX_SIZE];
	// Validate arguments
	if (a == NULL || server_key == NULL || server_ip == NULL || server_port == 0)
	{
		return false;
	}

	FUNC2(tmp, sizeof(tmp), server_ip);
	FUNC1("UdpAccelInitClient: server_ip=%s, server_port=%u, server_cookie=%u, client_cookie=%u\n", tmp, server_port, server_cookie, client_cookie);

	if (FUNC3(server_ip) != a->IsIPv6)
	{
		return false;
	}

	FUNC0(a->YourKey, server_key, UDP_ACCELERATION_COMMON_KEY_SIZE);

	FUNC0(&a->YourIp, server_ip, sizeof(IP));
	FUNC0(&a->YourIp2, server_ip_2, sizeof(IP));
	a->YourPort = server_port;

	a->Now = FUNC4();

	a->MyCookie = client_cookie;
	a->YourCookie = server_cookie;

	a->Inited = true;

	return true;
}