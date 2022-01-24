#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_9__ {int /*<<< orphan*/ * PayloadList; } ;
struct TYPE_8__ {int /*<<< orphan*/ * PayloadList; } ;
struct TYPE_10__ {TYPE_3__ Proposal; TYPE_2__ Sa; } ;
struct TYPE_11__ {int PayloadType; TYPE_4__ Payload; TYPE_1__* BitArray; } ;
struct TYPE_7__ {int /*<<< orphan*/  Size; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_5__ IKE_PACKET_PAYLOAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int /*<<< orphan*/ ) ; 
#define  IKE_PAYLOAD_PROPOSAL 129 
#define  IKE_PAYLOAD_SA 128 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 

void FUNC4(LIST *o, UINT depth)
{
	UINT i;
	char space[MAX_SIZE];
	// Validate arguments
	if (o == NULL)
	{
		return;
	}

	FUNC3(space, ' ', depth * 2);

	for (i = 0;i < FUNC2(o);i++)
	{
		IKE_PACKET_PAYLOAD *payload = FUNC1(o, i);

		FUNC0("%s%u: Type = %u, Size = %u\n", space, i, payload->PayloadType, payload->BitArray->Size);

		switch (payload->PayloadType)
		{
		case IKE_PAYLOAD_SA:
			FUNC4(payload->Payload.Sa.PayloadList, depth + 1);
			break;

		case IKE_PAYLOAD_PROPOSAL:
			FUNC4(payload->Payload.Proposal.PayloadList, depth + 1);
			break;
		}
	}
}