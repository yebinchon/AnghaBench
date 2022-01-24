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
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

SOCK *FUNC2(UINT port, IP *ip)
{
	// Validate arguments
	if (ip == NULL)
	{
		return FUNC1(port, false, NULL);
	}

	if (FUNC0(ip))
	{
		return FUNC1(port, false, ip);
	}
	else
	{
		return FUNC1(port, true, ip);
	}
}