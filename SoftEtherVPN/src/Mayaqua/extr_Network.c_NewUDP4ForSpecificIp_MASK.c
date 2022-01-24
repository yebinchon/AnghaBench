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
typedef  int /*<<< orphan*/  local_ip ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

SOCK *FUNC5(IP *target_ip, UINT port)
{
	SOCK *s;
	IP local_ip;
	// Validate arguments
	if (target_ip == NULL || FUNC2(target_ip) || FUNC1(target_ip) == false)
	{
		target_ip = NULL;
	}

	FUNC4(&local_ip, sizeof(local_ip));
	FUNC0(&local_ip, target_ip);

	s = FUNC3(port, &local_ip);

	if (s == NULL)
	{
		s = FUNC3(port, NULL);
	}

	return s;
}