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
typedef  int /*<<< orphan*/  h ;
struct TYPE_6__ {int /*<<< orphan*/  SpiSize; int /*<<< orphan*/  ProtocolId; int /*<<< orphan*/  MessageType; int /*<<< orphan*/  DoI; } ;
struct TYPE_5__ {int /*<<< orphan*/  MessageData; int /*<<< orphan*/ * Spi; int /*<<< orphan*/  ProtocolId; int /*<<< orphan*/  MessageType; } ;
typedef  TYPE_1__ IKE_PACKET_NOTICE_PAYLOAD ;
typedef  TYPE_2__ IKE_NOTICE_HEADER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IKE_SA_DOI_IPSEC ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(IKE_PACKET_NOTICE_PAYLOAD *t, BUF *b)
{
	IKE_NOTICE_HEADER h;
	// Validate arguments
	if (t == NULL || b == NULL)
	{
		return false;
	}

	if (FUNC3(b, &h, sizeof(h)) != sizeof(h))
	{
		return false;
	}

	if (FUNC2(h.DoI) != IKE_SA_DOI_IPSEC)
	{
		FUNC0("ISAKMP: Invalid DoI Value: 0x%x\n", FUNC2(h.DoI));
		return false;
	}

	t->MessageType = FUNC1(h.MessageType);
	t->ProtocolId = h.ProtocolId;
	t->Spi = FUNC4(b, h.SpiSize);
	if (t->Spi == NULL)
	{
		return false;
	}
	t->MessageData = FUNC5(b);

	return true;
}