#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
struct TYPE_22__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_21__ {int /*<<< orphan*/  NextIv; int /*<<< orphan*/  Key; int /*<<< orphan*/  Iv; } ;
struct TYPE_20__ {int FlagEncrypted; scalar_t__ ExchangeType; } ;
struct TYPE_19__ {TYPE_1__* IkeClient; scalar_t__ NextSendTick; int /*<<< orphan*/ * SendBuffer; int /*<<< orphan*/  BlockSize; int /*<<< orphan*/  CryptoKey; int /*<<< orphan*/  Iv; } ;
struct TYPE_18__ {int /*<<< orphan*/  Interrupts; scalar_t__ Now; } ;
struct TYPE_17__ {int /*<<< orphan*/  ClientPort; int /*<<< orphan*/  ClientIP; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerIP; } ;
typedef  TYPE_2__ IKE_SERVER ;
typedef  TYPE_3__ IKE_SA ;
typedef  TYPE_4__ IKE_PACKET ;
typedef  TYPE_5__ IKE_CRYPTO_PARAM ;
typedef  TYPE_6__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ IKE_EXCHANGE_TYPE_INFORMATION ; 
 scalar_t__ IKE_SA_RESEND_INTERVAL ; 
 int /*<<< orphan*/  IKE_UDP_TYPE_ISAKMP ; 
 TYPE_6__* FUNC5 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(IKE_SERVER *ike, IKE_SA *sa, IKE_PACKET *p)
{
	BUF *buf;
	// Validate arguments
	if (ike == NULL || sa == NULL)
	{
		return;
	}

	if (p == NULL)
	{
		FUNC4(sa->SendBuffer);
		sa->SendBuffer = NULL;
		sa->NextSendTick = 0;
		return;
	}

	// Build a packet
	if (p->FlagEncrypted == false)
	{
		buf = FUNC5(p, NULL);
	}
	else
	{
		IKE_CRYPTO_PARAM cp;

		FUNC2(cp.Iv, sa->Iv, sa->BlockSize);
		cp.Key = sa->CryptoKey;

		buf = FUNC5(p, &cp);

		FUNC6(sa, cp.NextIv, sa->BlockSize);
	}

	if (buf == NULL)
	{
		return;
	}

	if (p->ExchangeType != IKE_EXCHANGE_TYPE_INFORMATION)
	{
		// Register the last packet to re-transmit
		if (sa->SendBuffer != NULL)
		{
			FUNC4(sa->SendBuffer);
		}

		sa->SendBuffer = FUNC1(buf);
		sa->NextSendTick = ike->Now + (UINT64)(IKE_SA_RESEND_INTERVAL);
		FUNC0(ike->Interrupts, sa->NextSendTick);
	}

	FUNC7(ike, IKE_UDP_TYPE_ISAKMP, &sa->IkeClient->ServerIP, sa->IkeClient->ServerPort,
		&sa->IkeClient->ClientIP, sa->IkeClient->ClientPort,
		buf->Buf, buf->Size);

	FUNC3(buf);
}