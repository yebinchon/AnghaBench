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
typedef  int /*<<< orphan*/  ip ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

void FUNC7(char *str, UINT size, UINT ip_4_uint, UCHAR *ip_6_bytes)
{
	IP ip4;
	IP ip6;
	IP ip;
	// Validate arguments
	if (str == NULL)
	{
		return;
	}

	FUNC6(&ip, sizeof(ip));

	FUNC5(&ip4, ip_4_uint);
	FUNC4(&ip6, ip_6_bytes);

	if (FUNC2(&ip4) || (FUNC3(&ip4) && (FUNC3(&ip6) == false)))
	{
		FUNC0(&ip, &ip6, sizeof(IP));
	}
	else
	{
		FUNC0(&ip, &ip4, sizeof(IP));
	}

	FUNC1(str, size, &ip);
}