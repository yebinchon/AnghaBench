#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {scalar_t__ Expires; int /*<<< orphan*/  HostName; int /*<<< orphan*/  IpAddress; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ HOSTCACHE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ EXPIRES_HOSTNAME ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * HostCacheList ; 
 int FUNC4 () ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC15 (int) ; 

void FUNC16(IP *ip, char *hostname)
{
	// Validate arguments
	if (ip == NULL || hostname == NULL)
	{
		return;
	}
	if (FUNC4() == false)
	{
		return;
	}

	FUNC7(HostCacheList);
	{
		HOSTCACHE t, *c;
		UINT i;
		LIST *o;

		FUNC14(&t, sizeof(t));
		FUNC1(&t.IpAddress, ip, sizeof(IP));

		c = FUNC10(HostCacheList, &t);
		if (c == NULL)
		{
			c = FUNC15(sizeof(HOSTCACHE));
			FUNC1(&c->IpAddress, ip, sizeof(IP));
			FUNC0(HostCacheList, c);
		}

		FUNC11(c->HostName, sizeof(c->HostName), hostname);
		c->Expires = FUNC12() + (UINT64)EXPIRES_HOSTNAME;

		o = FUNC8(NULL);

		for (i = 0;i < FUNC6(HostCacheList);i++)
		{
			HOSTCACHE *c = FUNC5(HostCacheList, i);

			if (c->Expires <= FUNC12())
			{
				FUNC0(o, c);
			}
		}

		for (i = 0;i < FUNC6(o);i++)
		{
			HOSTCACHE *c = FUNC5(o, i);

			if (FUNC2(HostCacheList, c))
			{
				FUNC3(c);
			}
		}

		FUNC9(o);
	}
	FUNC13(HostCacheList);
}