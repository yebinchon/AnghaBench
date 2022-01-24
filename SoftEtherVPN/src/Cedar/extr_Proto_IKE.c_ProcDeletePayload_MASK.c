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
typedef  int /*<<< orphan*/  UINT64 ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_10__ {int Size; scalar_t__ Buf; } ;
struct TYPE_9__ {scalar_t__ ProtocolId; int /*<<< orphan*/  SpiList; } ;
struct TYPE_8__ {int /*<<< orphan*/ * IkeClient; } ;
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  TYPE_1__ IKE_SA ;
typedef  TYPE_2__ IKE_PACKET_DELETE_PAYLOAD ;
typedef  int /*<<< orphan*/  IKE_CLIENT ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ IKE_PROTOCOL_ID_IKE ; 
 scalar_t__ IKE_PROTOCOL_ID_IPSEC_ESP ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC8(IKE_SERVER *ike, IKE_CLIENT *c, IKE_PACKET_DELETE_PAYLOAD *d)
{
	// Validate arguments
	if (ike == NULL || c == NULL || d == NULL)
	{
		return;
	}

	if (d->ProtocolId == IKE_PROTOCOL_ID_IPSEC_ESP)
	{
		UINT i;
		// Remove the IPsec SA
		for (i = 0;i < FUNC2(d->SpiList);i++)
		{
			BUF *b = FUNC1(d->SpiList, i);

			if (b->Size == 4)
			{
				UINT spi = FUNC5(b->Buf);
				FUNC3(ike, FUNC7(ike, c, spi));
			}
		}
	}
	else if (d->ProtocolId == IKE_PROTOCOL_ID_IKE)
	{
		UINT i;
		// Remove the IKE SA
		for (i = 0;i < FUNC2(d->SpiList);i++)
		{
			BUF *b = FUNC1(d->SpiList, i);

			if (b->Size == 16)
			{
				UINT64 v1 = FUNC6(((UCHAR *)b->Buf) + 0);
				UINT64 v2 = FUNC6(((UCHAR *)b->Buf) + 8);

				IKE_SA *sa = FUNC0(ike, v2);

				if (sa != NULL && sa->IkeClient == c)
				{
					FUNC4(ike, sa);
				}
			}
		}
	}
}