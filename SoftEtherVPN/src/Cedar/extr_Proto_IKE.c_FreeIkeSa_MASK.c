#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  CryptoKey; int /*<<< orphan*/  SAi_b; int /*<<< orphan*/  GXr; int /*<<< orphan*/  GXi; int /*<<< orphan*/  YourIDPayloadForAM; int /*<<< orphan*/  DhSharedKey; int /*<<< orphan*/  ResponderRand; int /*<<< orphan*/  InitiatorRand; int /*<<< orphan*/  SendBuffer; } ;
typedef  TYPE_1__ IKE_SA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(IKE_SA *sa)
{
	// Validate arguments
	if (sa == NULL)
	{
		return;
	}

	FUNC1(sa->SendBuffer);

	FUNC1(sa->InitiatorRand);
	FUNC1(sa->ResponderRand);
	FUNC1(sa->DhSharedKey);
	FUNC1(sa->YourIDPayloadForAM);

	FUNC1(sa->GXi);
	FUNC1(sa->GXr);

	FUNC1(sa->SAi_b);

	FUNC2(sa->CryptoKey);

	FUNC0(sa);
}