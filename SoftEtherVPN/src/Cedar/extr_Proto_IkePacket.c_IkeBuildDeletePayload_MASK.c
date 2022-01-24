#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h ;
typedef  int UINT ;
struct TYPE_13__ {int Size; TYPE_2__* Buf; } ;
struct TYPE_12__ {int SpiSize; int /*<<< orphan*/  ProtocolId; int /*<<< orphan*/  NumSpis; int /*<<< orphan*/  DoI; } ;
struct TYPE_11__ {int /*<<< orphan*/  SpiList; int /*<<< orphan*/  ProtocolId; } ;
typedef  TYPE_1__ IKE_PACKET_DELETE_PAYLOAD ;
typedef  TYPE_2__ IKE_DELETE_HEADER ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IKE_SA_DOI_IPSEC ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

BUF *FUNC7(IKE_PACKET_DELETE_PAYLOAD *t)
{
	IKE_DELETE_HEADER h;
	BUF *ret;
	UINT i;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	FUNC6(&h, sizeof(h));
	h.DoI = FUNC1(IKE_SA_DOI_IPSEC);
	h.NumSpis = FUNC0(FUNC3(t->SpiList));
	h.ProtocolId = t->ProtocolId;

	if (FUNC3(t->SpiList) >= 1)
	{
		BUF *b = FUNC2(t->SpiList, 0);

		h.SpiSize = b->Size;
	}

	ret = FUNC4();
	FUNC5(ret, &h, sizeof(h));

	for (i = 0;i < FUNC3(t->SpiList);i++)
	{
		BUF *b = FUNC2(t->SpiList, i);

		FUNC5(ret, b->Buf, b->Size);
	}

	return ret;
}