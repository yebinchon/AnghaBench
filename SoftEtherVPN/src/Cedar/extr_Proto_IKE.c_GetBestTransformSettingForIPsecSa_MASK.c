#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  set ;
typedef  scalar_t__ UINT ;
struct TYPE_21__ {int /*<<< orphan*/  PayloadList; } ;
struct TYPE_19__ {scalar_t__ ProtocolId; TYPE_2__* Spi; int /*<<< orphan*/  PayloadList; } ;
struct TYPE_18__ {int /*<<< orphan*/  PayloadList; } ;
struct TYPE_15__ {int /*<<< orphan*/  Transform; TYPE_5__ Proposal; TYPE_4__ Sa; } ;
struct TYPE_20__ {TYPE_1__ Payload; } ;
struct TYPE_17__ {scalar_t__ OnlyCapsuleModeIsInvalid; int /*<<< orphan*/  SpiServerToClient; } ;
struct TYPE_16__ {int Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_3__ IPSEC_SA_TRANSFORM_SETTING ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  int /*<<< orphan*/  IKE_PACKET_TRANSFORM_PAYLOAD ;
typedef  TYPE_4__ IKE_PACKET_SA_PAYLOAD ;
typedef  TYPE_5__ IKE_PACKET_PROPOSAL_PAYLOAD ;
typedef  TYPE_6__ IKE_PACKET_PAYLOAD ;
typedef  TYPE_7__ IKE_PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  IKE_PAYLOAD_PROPOSAL ; 
 int /*<<< orphan*/  IKE_PAYLOAD_SA ; 
 int /*<<< orphan*/  IKE_PAYLOAD_TRANSFORM ; 
 scalar_t__ IKE_PROTOCOL_ID_IPSEC_ESP ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 

bool FUNC6(IKE_SERVER *ike, IKE_PACKET *pr, IPSEC_SA_TRANSFORM_SETTING *setting, IP *server_ip)
{
	IKE_PACKET_PAYLOAD *sa_payload;
	IKE_PACKET_SA_PAYLOAD *sa;
	UINT i, num;
	bool ocmii_flag = false;
	// Validate arguments
	if (ike == NULL || pr == NULL || setting == NULL || server_ip == NULL)
	{
		return false;
	}

	FUNC5(setting, sizeof(IPSEC_SA_TRANSFORM_SETTING));

	// Get the SA payload
	sa_payload = FUNC1(pr->PayloadList, IKE_PAYLOAD_SA, 0);
	if (sa_payload == NULL)
	{
		return false;
	}

	sa = &sa_payload->Payload.Sa;

	// Scan all proposal payloads
	num = FUNC2(sa->PayloadList, IKE_PAYLOAD_PROPOSAL);
	for (i = 0;i < num;i++)
	{
		IKE_PACKET_PAYLOAD *proposal_payload = FUNC1(sa->PayloadList, IKE_PAYLOAD_PROPOSAL, i);

		if (proposal_payload != NULL)
		{
			IKE_PACKET_PROPOSAL_PAYLOAD *proposal = &proposal_payload->Payload.Proposal;

			// Examine the contents of the proposal payload
			if (proposal->ProtocolId == IKE_PROTOCOL_ID_IPSEC_ESP && proposal->Spi->Size == 4)
			{
				// Scan all transform payloads
				UINT j, num2;

				num2 = FUNC2(proposal->PayloadList, IKE_PAYLOAD_TRANSFORM);
				for (j = 0;j < num2;j++)
				{
					IKE_PACKET_PAYLOAD *transform_payload = FUNC1(proposal->PayloadList, IKE_PAYLOAD_TRANSFORM, j);
					if (transform_payload != NULL)
					{
						IKE_PACKET_TRANSFORM_PAYLOAD *transform = &transform_payload->Payload.Transform;
						IPSEC_SA_TRANSFORM_SETTING set;

						FUNC5(&set, sizeof(set));

						if (FUNC4(ike, transform, &set, server_ip))
						{
							FUNC0(setting, &set, sizeof(IPSEC_SA_TRANSFORM_SETTING));

							setting->SpiServerToClient = FUNC3(proposal->Spi->Buf);

							return true;
						}
						else
						{
							if (set.OnlyCapsuleModeIsInvalid)
							{
								if (ocmii_flag == false)
								{
									FUNC0(setting, &set, sizeof(IPSEC_SA_TRANSFORM_SETTING));
									ocmii_flag = true;
								}
							}
						}
					}
				}
			}
		}
	}

	return false;
}