#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ProxyType; int /*<<< orphan*/  ProxyHostName; } ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ INTERNET_SETTING ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ PROXY_DIRECT ; 

bool FUNC4(INTERNET_SETTING *s)
{
	IP ip;
	// Validate arguments
	if (s == NULL)
	{
		return false;
	}

	if (s->ProxyType == PROXY_DIRECT)
	{
		return false;
	}

	if (FUNC0(&ip, s->ProxyHostName) == false)
	{
		return false;
	}

	if (FUNC2(&ip))
	{
		return true;
	}

	if (FUNC1(&ip))
	{
		return true;
	}

	if (FUNC3(&ip))
	{
		return true;
	}

	return false;
}