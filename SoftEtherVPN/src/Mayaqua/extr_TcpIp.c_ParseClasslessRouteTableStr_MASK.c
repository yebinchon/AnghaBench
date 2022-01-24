#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  r ;
typedef  scalar_t__ UINT ;
struct TYPE_11__ {size_t NumExistingRoutes; int /*<<< orphan*/ * Entries; } ;
struct TYPE_10__ {scalar_t__ NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ DHCP_CLASSLESS_ROUTE_TABLE ;
typedef  TYPE_2__ DHCP_CLASSLESS_ROUTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 size_t MAX_DHCP_CLASSLESS_ROUTE_ENTRIES ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

bool FUNC5(DHCP_CLASSLESS_ROUTE_TABLE *d, char *str)
{
	bool ret = true;
	TOKEN_LIST *t;
	// Validate arguments
	if (d == NULL || str == NULL)
	{
		return false;
	}

	FUNC4(d, sizeof(DHCP_CLASSLESS_ROUTE_TABLE));

	t = FUNC3(str, NULL);

	if (t != NULL)
	{
		UINT i;

		for (i = 0;i < t->NumTokens;i++)
		{
			DHCP_CLASSLESS_ROUTE r;

			FUNC4(&r, sizeof(r));
			if (FUNC2(&r, t->Token[i]))
			{
				if (d->NumExistingRoutes < MAX_DHCP_CLASSLESS_ROUTE_ENTRIES)
				{
					FUNC0(&d->Entries[d->NumExistingRoutes], &r, sizeof(DHCP_CLASSLESS_ROUTE));
					d->NumExistingRoutes++;
				}
				else
				{
					// Overflow
					ret = false;
					break;
				}
			}
			else
			{
				// Parse error
				ret = false;
				break;
			}
		}
	}

	FUNC1(t);

	return ret;
}