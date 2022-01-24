#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct in_addr {int /*<<< orphan*/  sin_addr; } ;
struct addrinfo {scalar_t__ ai_family; int /*<<< orphan*/ * ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  hint ;
typedef  int /*<<< orphan*/  addr ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sockaddr_in*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct addrinfo*) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 

bool FUNC12(IP *ip, char *hostname)
{
	struct sockaddr_in in;
	struct in_addr addr;
	struct addrinfo hint;
	struct addrinfo *info;
	// Validate arguments
	if (ip == NULL || hostname == NULL)
	{
		return false;
	}

	if (FUNC2(hostname))
	{
		return false;
	}

	if (FUNC6(hostname, "localhost") == 0)
	{
		FUNC5(ip, 127, 0, 0, 1);
		return true;
	}

	if (FUNC8(ip, hostname) == false && FUNC7(ip, hostname) == false)
	{
		// Forward resolution
		FUNC9(&hint, sizeof(hint));
		hint.ai_family = AF_INET;
		hint.ai_socktype = SOCK_STREAM;
		hint.ai_protocol = IPPROTO_TCP;
		info = NULL;

		if (FUNC11(hostname, NULL, &hint, &info) != 0 ||
			info->ai_family != AF_INET)
		{
			if (info)
			{
				FUNC10(info);
			}
			return FUNC4(ip, hostname);
		}
		// Forward resolution success
		FUNC0(&in, info->ai_addr, sizeof(struct sockaddr_in));
		FUNC10(info);
		FUNC0(&addr, &in.sin_addr, sizeof(addr));
		FUNC1(ip, &addr);
	}

	// Save Cache
	FUNC3(hostname, ip);

	return true;
}