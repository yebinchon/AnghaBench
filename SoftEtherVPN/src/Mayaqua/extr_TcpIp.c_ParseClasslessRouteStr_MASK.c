#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  ip_and_mask ;
typedef  int /*<<< orphan*/  gateway ;
struct TYPE_8__ {int Exists; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  Network; int /*<<< orphan*/  Gateway; int /*<<< orphan*/  SubnetMaskLen; } ;
struct TYPE_7__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ DHCP_CLASSLESS_ROUTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 

bool FUNC11(DHCP_CLASSLESS_ROUTE *r, char *str)
{
	TOKEN_LIST *t;
	bool ret = false;
	char tmp[MAX_PATH];
	// Validate arguments
	if (r == NULL || str == NULL)
	{
		return false;
	}

	FUNC6(tmp, sizeof(tmp), str);
	FUNC9(tmp);

	t = FUNC5(str, "/");
	if (t == NULL)
	{
		return false;
	}

	if (t->NumTokens == 3)
	{
		char ip_and_mask[MAX_PATH];
		char gateway[MAX_PATH];

		FUNC10(r, sizeof(DHCP_CLASSLESS_ROUTE));

		FUNC0(ip_and_mask, sizeof(ip_and_mask), "%s/%s", t->Token[0], t->Token[1]);
		FUNC6(gateway, sizeof(gateway), t->Token[2]);

		if (FUNC4(ip_and_mask, &r->Network, &r->SubnetMask))
		{
			r->SubnetMaskLen = FUNC8(&r->SubnetMask);

			if (FUNC7(&r->Gateway, gateway))
			{
				if (FUNC3(&r->Gateway) && FUNC3(&r->Network) && FUNC3(&r->SubnetMask))
				{
					r->Exists = true;

					FUNC2(&r->Network, &r->Network, &r->SubnetMask);

					ret = true;
				}
			}
		}
	}

	FUNC1(t);

	return ret;
}