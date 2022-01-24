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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GetHostNameThread ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TIMEOUT_HOSTNAME ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 

bool FUNC12(char *hostname, UINT size, IP *ip)
{
	THREAD *t;
	IP *p_ip;
	bool ret;
	// Validate arguments
	if (hostname == NULL || ip == NULL)
	{
		return false;
	}

	if (FUNC2(hostname, size, ip))
	{
		if (FUNC4(hostname) == false)
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	p_ip = FUNC11(sizeof(IP));
	FUNC1(p_ip, ip, sizeof(IP));

	t = FUNC6(GetHostNameThread, p_ip);

	FUNC10(t);

	FUNC9(t, TIMEOUT_HOSTNAME);

	FUNC7(t);

	ret = FUNC2(hostname, size, ip);
	if (ret == false)
	{
		if (FUNC5(ip))
		{
			ret = FUNC3(hostname, size, ip);
			if (ret)
			{
				FUNC0(ip, hostname);
			}
		}
	}
	else
	{
		if (FUNC4(hostname))
		{
			ret = false;
		}
	}
	if (ret == false)
	{
		FUNC0(ip, "");
		FUNC8(hostname, size, "");
	}

	return ret;
}