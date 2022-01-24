#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h ;
struct TYPE_11__ {int SpiSize; int /*<<< orphan*/  ProtocolId; int /*<<< orphan*/  MessageType; int /*<<< orphan*/  DoI; } ;
struct TYPE_10__ {TYPE_2__* MessageData; TYPE_1__* Spi; int /*<<< orphan*/  ProtocolId; int /*<<< orphan*/  MessageType; } ;
struct TYPE_9__ {int Size; TYPE_4__* Buf; } ;
struct TYPE_8__ {int Size; TYPE_4__* Buf; } ;
typedef  TYPE_3__ IKE_PACKET_NOTICE_PAYLOAD ;
typedef  TYPE_4__ IKE_NOTICE_HEADER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IKE_SA_DOI_IPSEC ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 

BUF *FUNC5(IKE_PACKET_NOTICE_PAYLOAD *t)
{
	IKE_NOTICE_HEADER h;
	BUF *ret;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	FUNC4(&h, sizeof(h));
	h.DoI = FUNC1(IKE_SA_DOI_IPSEC);
	h.MessageType = FUNC0(t->MessageType);
	h.ProtocolId = t->ProtocolId;
	h.SpiSize = t->Spi->Size;

	ret = FUNC2();
	FUNC3(ret, &h, sizeof(h));
	FUNC3(ret, t->Spi->Buf, t->Spi->Size);

	if (t->MessageData != NULL)
	{
		FUNC3(ret, t->MessageData->Buf, t->MessageData->Size);
	}

	return ret;
}