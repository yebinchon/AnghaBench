#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  hubname ;
struct TYPE_9__ {int /*<<< orphan*/  lock_online; TYPE_1__* SecureNAT; } ;
struct TYPE_8__ {int /*<<< orphan*/  Cedar; } ;
struct TYPE_7__ {int /*<<< orphan*/  Nat; } ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  RPC_ENUM_NAT ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_3__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

PACK *FUNC12(SERVER *s, PACK *p)
{
	char hubname[MAX_HUBNAME_LEN + 1];
	RPC_ENUM_NAT t;
	PACK *ret;
	HUB *h;
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return FUNC4();
	}
	if (FUNC7(p, "HubName", hubname, sizeof(hubname)) == false)
	{
		return FUNC4();
	}
	FUNC11(&t, sizeof(t));

	FUNC3(s->Cedar);
	{
		h = FUNC1(s->Cedar, hubname);
	}
	FUNC10(s->Cedar);

	if (h != NULL)
	{
		FUNC2(h->lock_online);
		{
			if (h->SecureNAT != NULL)
			{
				FUNC5(h->SecureNAT->Nat, &t);
			}
		}
		FUNC9(h->lock_online);
	}

	FUNC8(h);

	ret = FUNC4();
	FUNC6(ret, &t);
	FUNC0(&t);

	return ret;
}