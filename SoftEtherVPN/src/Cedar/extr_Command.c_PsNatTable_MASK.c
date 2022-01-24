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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  v2 ;
typedef  int /*<<< orphan*/  v1 ;
typedef  int /*<<< orphan*/  tmp8 ;
typedef  int /*<<< orphan*/  tmp7 ;
typedef  int /*<<< orphan*/  tmp6 ;
typedef  int /*<<< orphan*/  tmp4 ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_16__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_14__ {scalar_t__ NumItem; TYPE_1__* Items; int /*<<< orphan*/  HubName; } ;
struct TYPE_13__ {int Protocol; int TcpStatus; int /*<<< orphan*/  SendSize; int /*<<< orphan*/  RecvSize; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  DestPort; int /*<<< orphan*/  DestHost; int /*<<< orphan*/  SrcPort; int /*<<< orphan*/  SrcHost; int /*<<< orphan*/  Id; } ;
typedef  TYPE_1__ RPC_ENUM_NAT_ITEM ;
typedef  TYPE_2__ RPC_ENUM_NAT ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
#define  NAT_DNS 136 
#define  NAT_ICMP 135 
#define  NAT_TCP 134 
#define  NAT_TCP_CONNECTED 133 
#define  NAT_TCP_CONNECTING 132 
#define  NAT_TCP_ESTABLISHED 131 
#define  NAT_TCP_SEND_RESET 130 
#define  NAT_TCP_WAIT_DISCONNECT 129 
#define  NAT_UDP 128 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 char* FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,char*) ; 

UINT FUNC19(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_NAT t;

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC17("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC8(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC16(&t, sizeof(t));
	FUNC10(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC9(ps->Rpc, &t);

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

		FUNC3(ct, FUNC17("NM_NAT_ID"), false);
		FUNC3(ct, FUNC17("NM_NAT_PROTOCOL"), false);
		FUNC3(ct, FUNC17("NM_NAT_SRC_HOST"), false);
		FUNC3(ct, FUNC17("NM_NAT_SRC_PORT"), false);
		FUNC3(ct, FUNC17("NM_NAT_DST_HOST"), false);
		FUNC3(ct, FUNC17("NM_NAT_DST_PORT"), false);
		FUNC3(ct, FUNC17("NM_NAT_CREATED"), false);
		FUNC3(ct, FUNC17("NM_NAT_LAST_COMM"), false);
		FUNC3(ct, FUNC17("NM_NAT_SIZE"), false);
		FUNC3(ct, FUNC17("NM_NAT_TCP_STATUS"), false);

		for (i = 0;i < t.NumItem;i++)
		{
			RPC_ENUM_NAT_ITEM *e = &t.Items[i];
			wchar_t tmp0[MAX_SIZE];
			wchar_t *tmp1 = L"";
			wchar_t tmp2[MAX_SIZE];
			wchar_t tmp3[MAX_SIZE];
			wchar_t tmp4[MAX_SIZE];
			wchar_t tmp5[MAX_SIZE];
			wchar_t tmp6[MAX_SIZE];
			wchar_t tmp7[MAX_SIZE];
			wchar_t tmp8[MAX_SIZE];
			wchar_t *tmp9 = L"";
			char v1[128], v2[128];

			// ID
			FUNC15(tmp0, e->Id);

			// Protocol
			switch (e->Protocol)
			{
			case NAT_TCP:
				tmp1 = FUNC17("NM_NAT_PROTO_TCP");
				break;
			case NAT_UDP:
				tmp1 = FUNC17("NM_NAT_PROTO_UDP");
				break;
			case NAT_DNS:
				tmp1 = FUNC17("NM_NAT_PROTO_DNS");
				break;
			case NAT_ICMP:
				tmp1 = FUNC17("NM_NAT_PROTO_ICMP");
				break;
			}

			// Source host
			FUNC11(tmp2, sizeof(tmp2), e->SrcHost);

			// Source port
			FUNC15(tmp3, e->SrcPort);

			// Destination host
			FUNC11(tmp4, sizeof(tmp4), e->DestHost);

			// Destination port
			FUNC15(tmp5, e->DestPort);

			// Creation date and time of the session
			FUNC7(tmp6, sizeof(tmp6), FUNC12(e->CreatedTime), NULL);

			// Last communication date and time
			FUNC7(tmp7, sizeof(tmp7), FUNC12(e->LastCommTime), NULL);

			// Communication amount
			FUNC13(v1, sizeof(v1), e->RecvSize);
			FUNC13(v2, sizeof(v2), e->SendSize);
			FUNC14(tmp8, sizeof(tmp8), L"%S / %S", v1, v2);

			// TCP state
			if (e->Protocol == NAT_TCP)
			{
				switch (e->TcpStatus)
				{
				case NAT_TCP_CONNECTING:
					tmp9 = FUNC17("NAT_TCP_CONNECTING");
					break;
				case NAT_TCP_SEND_RESET:
					tmp9 = FUNC17("NAT_TCP_SEND_RESET");
					break;
				case NAT_TCP_CONNECTED:
					tmp9 = FUNC17("NAT_TCP_CONNECTED");
					break;
				case NAT_TCP_ESTABLISHED:
					tmp9 = FUNC17("NAT_TCP_ESTABLISHED");
					break;
				case NAT_TCP_WAIT_DISCONNECT:
					tmp9 = FUNC17("NAT_TCP_WAIT_DISCONNECT");
					break;
				}
			}

			FUNC2(ct,
				tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9);
		}

		FUNC1(ct, c, true);
	}

	FUNC6(&t);

	FUNC5(o);

	return 0;
}