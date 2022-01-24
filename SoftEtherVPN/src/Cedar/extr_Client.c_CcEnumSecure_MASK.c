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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  Rpc; } ;
typedef  int /*<<< orphan*/  RPC_CLIENT_ENUM_SECURE ;
typedef  TYPE_1__ REMOTE_CLIENT ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

UINT FUNC5(REMOTE_CLIENT *r, RPC_CLIENT_ENUM_SECURE *e)
{
	PACK *ret;
	UINT err = 0;
	// Validate arguments
	if (r == NULL || e == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	ret = FUNC2(r->Rpc, "EnumSecure", NULL);

	if (FUNC4(ret))
	{
		FUNC1(e, ret);
	}
	else
	{
		err = FUNC3(ret);
	}

	FUNC0(ret);

	return err;
}