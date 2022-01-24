#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int Online; int /*<<< orphan*/  lock; int /*<<< orphan*/  Option; int /*<<< orphan*/ * ClientAuth; int /*<<< orphan*/ * ClientOption; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  Virtual; } ;
typedef  int /*<<< orphan*/  RPC_DUMMY ;
typedef  TYPE_1__ NAT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_ACCOUNT_NOT_PRESENT ; 
 int /*<<< orphan*/  ERR_ALREADY_ONLINE ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

UINT FUNC4(NAT *n, RPC_DUMMY *t)
{
	UINT ret = ERR_NO_ERROR;

	FUNC0(n->lock);
	{
		if (n->Online)
		{
			// It is already online
			ret = ERR_ALREADY_ONLINE;
		}
		else
		{
			if (n->ClientOption == NULL || n->ClientAuth == NULL)
			{
				// Setting is not yet done
				ret = ERR_ACCOUNT_NOT_PRESENT;
			}
			else
			{
				// OK
				n->Online = true;

				// Start connection
				n->Virtual = FUNC1(n->Cedar, n->ClientOption, n->ClientAuth,
					&n->Option, n);
			}
		}
	}
	FUNC3(n->lock);

	FUNC2(n);

	return ret;
}