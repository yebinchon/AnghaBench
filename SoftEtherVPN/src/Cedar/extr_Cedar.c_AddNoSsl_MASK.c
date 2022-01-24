#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
struct TYPE_10__ {int /*<<< orphan*/  NonSslList; } ;
struct TYPE_9__ {scalar_t__ Count; scalar_t__ EntryExpires; int /*<<< orphan*/  IpAddress; } ;
typedef  TYPE_1__ NON_SSL ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ NON_SSL_ENTRY_EXPIRES ; 
 scalar_t__ NON_SSL_MIN_COUNT ; 
 TYPE_1__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int) ; 

bool FUNC8(CEDAR *c, IP *ip)
{
	NON_SSL *n;
	bool ret = true;
	// Validate arguments
	if (c == NULL || ip == NULL)
	{
		return true;
	}

	FUNC3(c->NonSslList);
	{
		FUNC2(c);

		n = FUNC4(c, ip);

		if (n == NULL)
		{
			n = FUNC7(sizeof(NON_SSL));
			FUNC1(&n->IpAddress, ip, sizeof(IP));
			n->Count = 0;

			FUNC0(c->NonSslList, n);
		}

		n->EntryExpires = FUNC5() + (UINT64)NON_SSL_ENTRY_EXPIRES;

		n->Count++;

		if (n->Count > NON_SSL_MIN_COUNT)
		{
			ret = false;
		}
	}
	FUNC6(c->NonSslList);

	return ret;
}