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
struct TYPE_4__ {int /*<<< orphan*/  Rpc; } ;
typedef  int /*<<< orphan*/  RPC_CLIENT_CONNECT ;
typedef  TYPE_1__ REMOTE_CLIENT ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

UINT FUNC7(REMOTE_CLIENT *r, RPC_CLIENT_CONNECT *connect)
{
	PACK *ret, *p;
	UINT err = 0;
	// Validate arguments
	if (r == NULL || connect == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	FUNC0(r);

	p = FUNC2();
	FUNC3(p, connect);

	ret = FUNC4(r->Rpc, "Connect", p);

	if (FUNC6(ret) == false)
	{
		err = FUNC5(ret);
	}

	FUNC1(ret);

	return err;
}