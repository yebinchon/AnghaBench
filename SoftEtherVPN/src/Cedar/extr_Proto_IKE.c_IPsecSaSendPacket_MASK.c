#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
struct TYPE_24__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_23__ {int /*<<< orphan*/  NextIv; int /*<<< orphan*/  Key; int /*<<< orphan*/  Iv; } ;
struct TYPE_22__ {int FlagEncrypted; } ;
struct TYPE_21__ {int /*<<< orphan*/  Interrupts; scalar_t__ Now; } ;
struct TYPE_20__ {TYPE_2__* IkeClient; scalar_t__ NextSendTick; int /*<<< orphan*/ * SendBuffer; TYPE_1__* IkeSa; struct TYPE_20__* PairIPsecSa; int /*<<< orphan*/  Iv; } ;
struct TYPE_19__ {int /*<<< orphan*/  ClientPort; int /*<<< orphan*/  ClientIP; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerIP; } ;
struct TYPE_18__ {int /*<<< orphan*/  BlockSize; int /*<<< orphan*/  CryptoKey; } ;
typedef  TYPE_3__ IPSECSA ;
typedef  TYPE_4__ IKE_SERVER ;
typedef  TYPE_5__ IKE_PACKET ;
typedef  TYPE_6__ IKE_CRYPTO_PARAM ;
typedef  TYPE_7__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ IKE_SA_RESEND_INTERVAL ; 
 int /*<<< orphan*/  IKE_UDP_TYPE_ISAKMP ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC6 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(IKE_SERVER *ike, IPSECSA *sa, IKE_PACKET *p)
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
		buf = FUNC6(p, NULL);
	}
	else
	{
		IKE_CRYPTO_PARAM cp;

		FUNC2(cp.Iv, sa->Iv, sa->IkeSa->BlockSize);
		cp.Key = sa->IkeSa->CryptoKey;

		buf = FUNC6(p, &cp);

		FUNC5(sa, cp.NextIv, sa->IkeSa->BlockSize);
		FUNC5(sa->PairIPsecSa, cp.NextIv, sa->IkeSa->BlockSize);
	}

	if (buf == NULL)
	{
		return;
	}

	// Register the last packet to re-transmit
	if (sa->SendBuffer != NULL)
	{
		FUNC4(sa->SendBuffer);
	}

	sa->SendBuffer = FUNC1(buf);
	sa->NextSendTick = ike->Now + (UINT64)(IKE_SA_RESEND_INTERVAL);
	FUNC0(ike->Interrupts, sa->NextSendTick);

	FUNC7(ike, IKE_UDP_TYPE_ISAKMP, &sa->IkeClient->ServerIP, sa->IkeClient->ServerPort,
		&sa->IkeClient->ClientIP, sa->IkeClient->ClientPort,
		buf->Buf, buf->Size);

	FUNC3(buf);
}