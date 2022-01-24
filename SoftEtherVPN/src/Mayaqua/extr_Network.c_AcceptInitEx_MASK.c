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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_3__ {int /*<<< orphan*/ * RemoteHostname; int /*<<< orphan*/  RemoteIP; } ;
typedef  TYPE_1__ SOCK ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int disable_gethostname_by_accept ; 

void FUNC6(SOCK *s, bool no_lookup_hostname)
{
	char tmp[MAX_SIZE];
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	FUNC5(tmp, sizeof(tmp));

	if (disable_gethostname_by_accept == false && no_lookup_hostname == false)
	{
		if (FUNC2(tmp, sizeof(tmp), &s->RemoteIP) == false ||
			FUNC4(tmp))
		{
			FUNC3(tmp, sizeof(tmp), &s->RemoteIP);
		}
	}
	else
	{
		FUNC3(tmp, sizeof(tmp), &s->RemoteIP);
	}

	if (s->RemoteHostname != NULL)
	{
		FUNC1(s->RemoteHostname);
	}

	s->RemoteHostname = FUNC0(tmp);
}