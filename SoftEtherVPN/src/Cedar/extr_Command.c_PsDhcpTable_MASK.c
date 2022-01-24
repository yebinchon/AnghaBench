#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp5 ;
typedef  int /*<<< orphan*/  tmp4 ;
typedef  int /*<<< orphan*/  tmp3 ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  str ;
typedef  scalar_t__ UINT ;
struct TYPE_16__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_14__ {scalar_t__ NumItem; TYPE_1__* Items; int /*<<< orphan*/  HubName; } ;
struct TYPE_13__ {char* Hostname; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  ExpireTime; int /*<<< orphan*/  LeasedTime; int /*<<< orphan*/  Id; } ;
typedef  TYPE_1__ RPC_ENUM_DHCP_ITEM ;
typedef  TYPE_2__ RPC_ENUM_DHCP ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_4__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC19(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_DHCP t;

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC17("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC10(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC16(&t, sizeof(t));
	FUNC12(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC11(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC5(o);
		return ret;
	}
	else
	{
		CT *ct = FUNC4();
		UINT i;

		FUNC3(ct, FUNC17("DHCP_DHCP_ID"), false);
		FUNC3(ct, FUNC17("DHCP_LEASED_TIME"), false);
		FUNC3(ct, FUNC17("DHCP_EXPIRE_TIME"), false);
		FUNC3(ct, FUNC17("DHCP_MAC_ADDRESS"), false);
		FUNC3(ct, FUNC17("DHCP_IP_ADDRESS"), false);
		FUNC3(ct, FUNC17("DHCP_HOSTNAME"), false);

		for (i = 0;i < t.NumItem;i++)
		{
			RPC_ENUM_DHCP_ITEM *e = &t.Items[i];
			wchar_t tmp0[MAX_SIZE];
			wchar_t tmp1[MAX_SIZE];
			wchar_t tmp2[MAX_SIZE];
			wchar_t tmp3[MAX_SIZE];
			wchar_t tmp4[MAX_SIZE];
			wchar_t tmp5[MAX_SIZE];
			char str[MAX_SIZE];

			// ID
			FUNC15(tmp0, e->Id);

			// Time
			FUNC7(tmp1, sizeof(tmp1), FUNC14(e->LeasedTime), NULL);
			FUNC7(tmp2, sizeof(tmp2), FUNC14(e->ExpireTime), NULL);

			FUNC9(str, sizeof(str), e->MacAddress);
			FUNC13(tmp3, sizeof(tmp3), str);

			FUNC8(str, sizeof(str), e->IpAddress);
			FUNC13(tmp4, sizeof(tmp4), str);

			FUNC13(tmp5, sizeof(tmp5), e->Hostname);

			FUNC2(ct,
				tmp0, tmp1, tmp2, tmp3, tmp4, tmp5);
		}

		FUNC1(ct, c, true);
	}

	FUNC6(&t);

	FUNC5(o);

	return 0;
}