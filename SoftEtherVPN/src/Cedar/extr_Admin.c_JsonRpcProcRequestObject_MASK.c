#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_10__ {TYPE_1__* Server; int /*<<< orphan*/ * Rpc; } ;
struct TYPE_9__ {int /*<<< orphan*/  RemoteHostname; int /*<<< orphan*/  RemotePort; int /*<<< orphan*/  RemoteIP; } ;
struct TYPE_8__ {int /*<<< orphan*/  Cedar; } ;
typedef  TYPE_2__ SOCK ;
typedef  int /*<<< orphan*/  RPC ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  JSON_VALUE ;
typedef  int /*<<< orphan*/  CONNECTION ;
typedef  TYPE_3__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  AdminDispatch ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

JSON_VALUE *FUNC12(ADMIN *admin, CONNECTION *c, SOCK *s, JSON_VALUE *json_req, char *method_name)
{
	PACK *pack_request;
	JSON_VALUE *ret = NULL;
	if (c == NULL || s == NULL || json_req == NULL || admin == NULL)
	{
		return NULL;
	}

	pack_request = FUNC5(json_req);

	FUNC6(pack_request, "function_name", method_name);

	if (pack_request != NULL)
	{
		RPC *rpc;
		PACK *pack_response;
		UINT err;

		// RPC Server
		rpc = FUNC10(s, AdminDispatch, admin);

		admin->Rpc = rpc;

		pack_response = FUNC0(rpc, pack_request);

		if (pack_response == NULL)
		{
			pack_response = FUNC7(ERR_NOT_SUPPORTED);
		}

		FUNC8(rpc, true);

		FUNC1(pack_request);

		// Construct response object
		err = FUNC2(pack_response);
		if (err != 0)
		{
			// Return the error
			ret = FUNC3(err, FUNC11(err));
		}
		else
		{
			// Return the PACK
			ret = FUNC4(pack_response);
		}

		FUNC9(admin->Server->Cedar, "LS_API_RPC_CALL",
			&s->RemoteIP, s->RemotePort, s->RemoteHostname,
			method_name, err, FUNC11(err));

		FUNC1(pack_response);
	}

	return ret;
}