#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* UCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  IvRecv; int /*<<< orphan*/  IvSend; void* KeyId; int /*<<< orphan*/  SendControlPacketList; int /*<<< orphan*/  AckReplyList; int /*<<< orphan*/  Status; int /*<<< orphan*/  Server; TYPE_1__* Session; } ;
struct TYPE_6__ {void* LastCreatedChannelIndex; int /*<<< orphan*/  Server; } ;
typedef  TYPE_1__ OPENVPN_SESSION ;
typedef  TYPE_2__ OPENVPN_CHANNEL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPENVPN_CHANNEL_STATUS_INIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC3 (int) ; 

OPENVPN_CHANNEL *FUNC4(OPENVPN_SESSION *se, UCHAR key_id)
{
	OPENVPN_CHANNEL *c;
	// Validate arguments
	if (se == NULL)
	{
		return NULL;
	}

	c = FUNC3(sizeof(OPENVPN_CHANNEL));

	c->Session = se;
	c->Server = se->Server;

	c->Status = OPENVPN_CHANNEL_STATUS_INIT;

	c->AckReplyList = FUNC0(true);

	c->SendControlPacketList = FUNC1(NULL);

	c->KeyId = key_id;

	FUNC2(c->IvSend, sizeof(c->IvSend));
	FUNC2(c->IvRecv, sizeof(c->IvRecv));

	//c->NextRekey = se->Server->Now + (UINT64)5000;

	se->LastCreatedChannelIndex = key_id;

	return c;
}