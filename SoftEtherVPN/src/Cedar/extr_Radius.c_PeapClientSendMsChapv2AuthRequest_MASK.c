#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  send_msg ;
typedef  int /*<<< orphan*/  nak ;
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_14__ {int PeapMode; scalar_t__ MsChapV2Challenge; int /*<<< orphan*/ * Username; } ;
struct TYPE_13__ {scalar_t__ Type; scalar_t__* Data; int /*<<< orphan*/  Len; } ;
struct TYPE_12__ {scalar_t__ Chap_Opcode; } ;
typedef  TYPE_1__ EAP_MSCHAPV2_GENERAL ;
typedef  int /*<<< orphan*/  EAP_MSCHAPV2_CHALLENGE ;
typedef  TYPE_2__ EAP_MESSAGE ;
typedef  TYPE_3__ EAP_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ EAP_MSCHAPV2_OP_CHALLENGE ; 
 scalar_t__ EAP_TYPE_IDENTITY ; 
 scalar_t__ EAP_TYPE_LEGACY_NAK ; 
 scalar_t__ EAP_TYPE_MS_AUTH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

bool FUNC8(EAP_CLIENT *eap)
{
	bool ret = false;
	UINT num_retry = 0;
	if (eap == NULL)
	{
		return false;
	}

	if (FUNC4(eap))
	{
		if (FUNC5(eap))
		{
			EAP_MESSAGE recv_msg;
			EAP_MESSAGE send_msg;

			if (FUNC2(eap, &recv_msg) && recv_msg.Type == EAP_TYPE_IDENTITY)
			{
LABEL_RETRY:
				num_retry++;
				if (num_retry >= 10)
				{
					return false;
				}
				FUNC7(&send_msg, sizeof(send_msg));
				send_msg.Type = EAP_TYPE_IDENTITY;
				send_msg.Len = FUNC1(5 + FUNC6(eap->Username));
				FUNC0(send_msg.Data, eap->Username, FUNC6(eap->Username));

				if (FUNC3(eap, &send_msg, 5 + FUNC6(eap->Username)) &&
					FUNC2(eap, &recv_msg))
				{
LABEL_RETRY2:
					num_retry++;
					if (num_retry >= 10)
					{
						return false;
					}
					if (recv_msg.Type == EAP_TYPE_MS_AUTH &&
						((EAP_MSCHAPV2_GENERAL *)&recv_msg)->Chap_Opcode == EAP_MSCHAPV2_OP_CHALLENGE)
					{
						EAP_MSCHAPV2_CHALLENGE *svr_challenge = (EAP_MSCHAPV2_CHALLENGE *)&recv_msg;

						FUNC0(&eap->MsChapV2Challenge, svr_challenge, sizeof(EAP_MSCHAPV2_CHALLENGE));

						ret = true;

						eap->PeapMode = true;
					}
					else if (recv_msg.Type == EAP_TYPE_IDENTITY)
					{
						UCHAR *rd = ((UCHAR *)&recv_msg);
						if (rd[4] == 0x01 && rd[8] == 0x21 && rd[9] == 0x80 &&
							rd[10] == 0x03 && rd[11] == 0x00 && rd[12] == 0x02 &&
							rd[13] == 0x00)
						{
							if (rd[14] == 0x02)
							{
								// Fail
								return false;
							}
						}

						goto LABEL_RETRY;
					}
					else
					{
						EAP_MESSAGE nak;

						FUNC7(&nak, sizeof(nak));
						nak.Type = EAP_TYPE_LEGACY_NAK;
						nak.Data[0] = EAP_TYPE_MS_AUTH;

						if (FUNC3(eap, &nak, 6) &&
							FUNC2(eap, &recv_msg))
						{
							goto LABEL_RETRY2;
						}
					}
				}
			}
		}
	}
	return ret;
}