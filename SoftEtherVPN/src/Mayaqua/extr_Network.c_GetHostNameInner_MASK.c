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
typedef  int /*<<< orphan*/  tmp ;
struct sockaddr_in {scalar_t__ sin_port; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_len; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  ip_str ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in_addr*,int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INET_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC2 (struct in_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in*,int) ; 
 scalar_t__ FUNC9 (struct sockaddr*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC10(char *hostname, UINT size, IP *ip)
{
	struct in_addr addr;
	struct sockaddr_in sa;
	char tmp[MAX_SIZE];
	char ip_str[64];
	// Validate arguments
	if (hostname == NULL || ip == NULL)
	{
		return false;
	}

	if (FUNC5(ip))
	{
		return FUNC1(hostname, size, ip);
	}

	// Reverse resolution
	FUNC2(&addr, ip);
	FUNC8(&sa, sizeof(sa));
	sa.sin_family = AF_INET;

#if	defined(UNIX_BSD) || defined(UNIX_MACOS)
	sa.sin_len = INET_ADDRSTRLEN;
#endif	// UNIX_BSD || UNIX_MACOS

	FUNC0(&sa.sin_addr, &addr, sizeof(struct in_addr));
	sa.sin_port = 0;

	if (FUNC9((struct sockaddr *)&sa, sizeof(sa), tmp, sizeof(tmp), NULL, 0, 0) != 0)
	{
		return false;
	}

	FUNC3(ip_str, sizeof(ip_str), ip);

	if (FUNC6(tmp, ip_str) == 0)
	{
		return false;
	}

	if (FUNC4(tmp))
	{
		return false;
	}

	FUNC7(hostname, size, tmp);

	return true;
}