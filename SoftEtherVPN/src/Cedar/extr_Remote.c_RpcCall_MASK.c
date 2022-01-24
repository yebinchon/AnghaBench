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
typedef  int UINT ;
struct TYPE_5__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/ * Sock; scalar_t__ IsVpnServer; } ;
typedef  TYPE_1__ RPC ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ERR_DISCONNECTED ; 
 int ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

PACK *FUNC9(RPC *r, char *function_name, PACK *p)
{
	PACK *ret;
	UINT num_retry = 0;
	UINT err = 0;
	// Validate arguments
	if (r == NULL || function_name == NULL)
	{
		return NULL;
	}

//	Debug("RpcCall: %s\n", function_name);

	FUNC2(r->Lock);
	{
		if (p == NULL)
		{
			p = FUNC3();
		}

		FUNC5(p, "function_name", function_name);

RETRY:
		err = 0;
		ret = FUNC7(r, p);

		if (ret == NULL)
		{
			if (r->IsVpnServer && r->Sock != NULL)
			{
				if (num_retry < 1)
				{
					num_retry++;

					// Attempt to reconnect the RPC to the VPN Server
					err = FUNC0(r);

					if (err == ERR_NO_ERROR)
					{
						goto RETRY;
					}
				}
			}
		}

		FUNC1(p);

		if (ret == NULL)
		{
			if (err == 0)
			{
				err = ERR_DISCONNECTED;
			}

			ret = FUNC6(err);
			FUNC4(ret, "error_code", err);
		}
	}
	FUNC8(r->Lock);

	return ret;
}