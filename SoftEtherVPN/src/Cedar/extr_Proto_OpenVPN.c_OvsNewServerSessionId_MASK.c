#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  SessionList; } ;
struct TYPE_5__ {scalar_t__ ServerSessionId; } ;
typedef  TYPE_1__ OPENVPN_SESSION ;
typedef  TYPE_2__ OPENVPN_SERVER ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 

UINT64 FUNC3(OPENVPN_SERVER *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return 0;
	}

	while (true)
	{
		UINT64 id = FUNC2();
		UINT i;
		bool exists = false;

		if (id == 0 || id == (UINT64)(0xFFFFFFFFFFFFFFFFULL))
		{
			continue;
		}

		for (i = 0;i < FUNC1(s->SessionList);i++)
		{
			OPENVPN_SESSION *se = FUNC0(s->SessionList, i);
			if (se->ServerSessionId == id)
			{
				exists = true;
			}
		}

		if (exists == false)
		{
			return id;
		}
	}
}