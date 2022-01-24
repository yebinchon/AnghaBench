#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int Online; int /*<<< orphan*/  lock; int /*<<< orphan*/ * Virtual; } ;
typedef  int /*<<< orphan*/  RPC_DUMMY ;
typedef  TYPE_1__ NAT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  ERR_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

UINT FUNC5(NAT *n, RPC_DUMMY *t)
{
	UINT ret = ERR_NO_ERROR;

	FUNC0(n->lock);
	{
		if (n->Online == false)
		{
			// It is offline
			ret = ERR_OFFLINE;
		}
		else
		{
			// Offline
			FUNC3(n->Virtual);
			FUNC2(n->Virtual);
			n->Virtual = NULL;

			n->Online = false;
		}
	}
	FUNC4(n->lock);

	FUNC1(n);

	return ret;
}