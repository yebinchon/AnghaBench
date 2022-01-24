#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  st ;
typedef  int /*<<< orphan*/  dtstr ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  CapsList; int /*<<< orphan*/  Rpc; } ;
struct TYPE_5__ {scalar_t__ EditionId; scalar_t__ ReleaseDate; char* SystemId; scalar_t__ SystemExpires; int NeedSubscription; scalar_t__ SubscriptionExpires; scalar_t__ NumClientConnectLicense; scalar_t__ NumBridgeConnectLicense; scalar_t__ AllowEnterpriseFunction; scalar_t__ IsSubscriptionExpired; int /*<<< orphan*/  EditionStr; } ;
typedef  TYPE_1__ RPC_LICENSE_STATUS ;
typedef  TYPE_2__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ INFINITE ; 
 scalar_t__ LICENSE_EDITION_VPN3_NO_LICENSE ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 char* FUNC14 (char*) ; 

UINT FUNC15(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_LICENSE_STATUS st;
	CT *ct;
	wchar_t tmp[MAX_SIZE];

	o = FUNC7(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC13(&st, sizeof(st));

	// RPC call
	ret = FUNC8(ps->Rpc, &st);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC4(o);
		return ret;
	}

	ct = FUNC3();

	if (st.EditionId == LICENSE_EDITION_VPN3_NO_LICENSE)
	{
		FUNC2(ct, FUNC14("SM_NO_LICENSE_COLUMN"), FUNC14("SM_NO_LICENSE"));
	}
	else
	{
		// Product edition name
		FUNC9(tmp, sizeof(tmp), st.EditionStr);
		FUNC2(ct, FUNC14("SM_LICENSE_STATUS_EDITION"), tmp);

		// Release date
		if (st.ReleaseDate != 0)
		{
			FUNC6(tmp, sizeof(tmp), st.ReleaseDate, NULL);
			FUNC2(ct, FUNC14("SM_LICENSE_STATUS_RELEASE"), tmp);
		}

		// Current system ID
		FUNC10(tmp, sizeof(tmp), L"%I64u", st.SystemId);
		FUNC2(ct, FUNC14("SM_LICENSE_STATUS_SYSTEM_ID"), tmp);

		// Expiration date of the current license product
		if (st.SystemExpires == 0)
		{
			FUNC11(tmp, sizeof(tmp), FUNC14("SM_LICENSE_NO_EXPIRES"));
		}
		else
		{
			FUNC6(tmp, sizeof(tmp), st.SystemExpires, NULL);
		}
		FUNC2(ct,  FUNC14("SM_LICENSE_STATUS_EXPIRES"), tmp);

		// Subscription (support) contract
		if (st.NeedSubscription == false)
		{
			FUNC11(tmp, sizeof(tmp), FUNC14("SM_LICENSE_STATUS_SUBSCRIPTION_NONEED"));
		}
		else
		{
			if (st.SubscriptionExpires == 0)
			{
				FUNC11(tmp, sizeof(tmp), FUNC14("SM_LICENSE_STATUS_SUBSCRIPTION_NONE"));
			}
			else
			{
				wchar_t dtstr[MAX_PATH];

				FUNC6(dtstr, sizeof(dtstr), st.SubscriptionExpires, NULL);

				FUNC10(tmp, sizeof(tmp),
					st.IsSubscriptionExpired ? FUNC14("SM_LICENSE_STATUS_SUBSCRIPTION_EXPIRED") :  FUNC14("SM_LICENSE_STATUS_SUBSCRIPTION_VALID"),
					dtstr);
			}
		}
		FUNC2(ct, FUNC14("SM_LICENSE_STATUS_SUBSCRIPTION"), tmp);

		if (st.NeedSubscription == false && st.SubscriptionExpires != 0)
		{
			wchar_t dtstr[MAX_PATH];

			FUNC6(dtstr, sizeof(dtstr), st.SubscriptionExpires, NULL);

			FUNC2(ct, FUNC14("SM_LICENSE_STATUS_SUBSCRIPTION_BUILD_STR"), tmp);
		}

		if (FUNC5(ps->CapsList, "b_vpn3"))
		{
			// Maximum creatable number of users
			if (st.NumClientConnectLicense == INFINITE)
			{
				FUNC11(tmp, sizeof(tmp), FUNC14("SM_LICENSE_INFINITE"));
			}
			else
			{
				FUNC12(tmp, st.NumClientConnectLicense);
			}
			FUNC2(ct, FUNC14("SM_LICENSE_NUM_CLIENT"), tmp);
		}

		// Available number of concurrent client connections
		if (st.NumBridgeConnectLicense == INFINITE)
		{
			FUNC11(tmp, sizeof(tmp), FUNC14("SM_LICENSE_INFINITE"));
		}
		else
		{
			FUNC12(tmp, st.NumBridgeConnectLicense);
		}
		FUNC2(ct, FUNC14("SM_LICENSE_NUM_BRIDGE"), tmp);

		// Availability of enterprise features
		FUNC2(ct, FUNC14("SM_LICENSE_STATUS_ENTERPRISE"),
			st.AllowEnterpriseFunction ? FUNC14("SM_LICENSE_STATUS_ENTERPRISE_YES") : FUNC14("SM_LICENSE_STATUS_ENTERPRISE_NO"));
	}

	FUNC1(ct, c, false);

	FUNC4(o);

	return 0;
}