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
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/ * X; } ;
struct TYPE_6__ {TYPE_1__ ClientCert; int /*<<< orphan*/  MdSend; int /*<<< orphan*/  MdRecv; int /*<<< orphan*/  CipherEncrypt; int /*<<< orphan*/  CipherDecrypt; int /*<<< orphan*/  SendControlPacketList; int /*<<< orphan*/  AckReplyList; int /*<<< orphan*/ * SslPipe; } ;
typedef  int /*<<< orphan*/  OPENVPN_CONTROL_PACKET ;
typedef  TYPE_2__ OPENVPN_CHANNEL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(OPENVPN_CHANNEL *c)
{
	UINT i;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	if (c->SslPipe != NULL)
	{
		FUNC3(c->SslPipe);
	}

	FUNC8(c->AckReplyList);

	for (i = 0;i < FUNC6(c->SendControlPacketList);i++)
	{
		OPENVPN_CONTROL_PACKET *p = FUNC5(c->SendControlPacketList, i);

		FUNC7(p);
	}

	FUNC9(c->SendControlPacketList);

	FUNC1(c->CipherDecrypt);
	FUNC1(c->CipherEncrypt);

	FUNC2(c->MdRecv);
	FUNC2(c->MdSend);

	if (c->ClientCert.X != NULL)
	{
		FUNC4(c->ClientCert.X);
	}

	FUNC0(c);
}