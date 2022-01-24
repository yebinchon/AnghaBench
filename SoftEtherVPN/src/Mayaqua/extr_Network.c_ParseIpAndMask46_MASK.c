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
typedef  int UINT ;
struct TYPE_4__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*) ; 
 TYPE_1__* FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

bool FUNC12(char *src, IP *ip, IP *mask)
{
	TOKEN_LIST *t;
	char *ipstr;
	char *subnetstr;
	bool ret = false;
	IP ip2;
	IP mask2;
	// Validate arguments
	if (src == NULL || ip == NULL || mask == NULL)
	{
		return false;
	}

	FUNC11(&ip2, sizeof(IP));
	FUNC11(&mask2, sizeof(IP));

	t = FUNC7(src, "/");
	if (t->NumTokens != 2)
	{
		FUNC1(t);
		return false;
	}

	ipstr = t->Token[0];
	subnetstr = t->Token[1];
	FUNC10(ipstr);
	FUNC10(subnetstr);

	if (FUNC8(&ip2, ipstr))
	{
		if (FUNC8(&mask2, subnetstr))
		{
			// Compare the kind of the mask part and the IP address part to confirm same
			if (FUNC5(&ip2) && FUNC5(&mask2))
			{
				// Both are IPv6
				ret = true;
				FUNC0(ip, &ip2, sizeof(IP));
				FUNC0(mask, &mask2, sizeof(IP));
			}
			else if (FUNC4(&ip2) && FUNC4(&mask2))
			{
				// Both are IPv4
				ret = true;
				FUNC0(ip, &ip2, sizeof(IP));
				FUNC0(mask, &mask2, sizeof(IP));
			}
		}
		else
		{
			if (FUNC6(subnetstr))
			{
				UINT i = FUNC9(subnetstr);
				// Mask part is a number
				if (FUNC5(&ip2) && i <= 128)
				{
					ret = true;
					FUNC0(ip, &ip2, sizeof(IP));
					FUNC3(mask, i);
				}
				else if (i <= 32)
				{
					ret = true;
					FUNC0(ip, &ip2, sizeof(IP));
					FUNC2(mask, i);
				}
			}
		}
	}

	FUNC1(t);

	return ret;
}