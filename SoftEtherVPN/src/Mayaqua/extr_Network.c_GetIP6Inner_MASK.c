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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct in6_addr {int /*<<< orphan*/  sin6_addr; } ;
struct addrinfo {scalar_t__ ai_family; int /*<<< orphan*/ * ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  hint ;
typedef  int /*<<< orphan*/  addr ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in6*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sockaddr_in6*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct addrinfo*) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 

bool FUNC12(IP *ip, char *hostname)
{
	struct sockaddr_in6 in;
	struct in6_addr addr;
	struct addrinfo hint;
	struct addrinfo *info;
	// Validate arguments
	if (ip == NULL || hostname == NULL)
	{
		return false;
	}

	if (FUNC3(hostname))
	{
		return false;
	}

	if (FUNC6(hostname, "localhost") == 0)
	{
		FUNC1(ip);
		return true;
	}

	if (FUNC8(ip, hostname) == false && FUNC7(ip, hostname) == false)
	{
		// Forward resolution
		FUNC9(&hint, sizeof(hint));
		hint.ai_family = AF_INET6;
		hint.ai_socktype = SOCK_STREAM;
		hint.ai_protocol = IPPROTO_TCP;
		info = NULL;

		if (FUNC11(hostname, NULL, &hint, &info) != 0 ||
			info->ai_family != AF_INET6)
		{
			if (info)
			{
				FUNC10(info);
			}
			return FUNC5(ip, hostname, true);
		}
		// Forward resolution success
		FUNC0(&in, info->ai_addr, sizeof(struct sockaddr_in6));
		FUNC10(info);

		FUNC0(&addr, &in.sin6_addr, sizeof(addr));
		FUNC2(ip, &addr);
	}

	// Save Cache
	FUNC4(hostname, ip);

	return true;
}