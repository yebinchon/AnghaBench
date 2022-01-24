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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(IP *ip)
{
	IP local;
	// Validate arguments
	if (ip == NULL)
	{
		return false;
	}
	if (FUNC2(ip) == false)
	{
		return false;
	}

	FUNC1(&local);

	if (FUNC0(&local, ip) == 0)
	{
		return true;
	}

	return false;
}