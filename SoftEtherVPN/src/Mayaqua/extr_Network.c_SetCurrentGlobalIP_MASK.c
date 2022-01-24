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
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_global_ip_lock ; 
 int current_global_ip_set ; 
 int /*<<< orphan*/  current_glocal_ipv4 ; 
 int /*<<< orphan*/  current_glocal_ipv6 ; 

void FUNC4(IP *ip, bool ipv6)
{
	// Validate arguments
	if (ip == NULL)
	{
		return;
	}

	if (FUNC1(ip))
	{
		return;
	}

	FUNC2(current_global_ip_lock);
	{
		if (ipv6 == false)
		{
			FUNC0(&current_glocal_ipv4, ip, sizeof(IP));
		}
		else
		{
			FUNC0(&current_glocal_ipv6, ip, sizeof(IP));
		}

		current_global_ip_set = true;
	}
	FUNC3(current_global_ip_lock);
}