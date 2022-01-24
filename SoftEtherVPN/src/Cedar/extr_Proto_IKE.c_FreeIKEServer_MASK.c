#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UDPPACKET ;
struct TYPE_6__ {int /*<<< orphan*/  ThreadList; int /*<<< orphan*/  Engine; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  SockEvent; int /*<<< orphan*/  ClientList; int /*<<< orphan*/  IkeSaList; int /*<<< orphan*/  IPsecSaList; int /*<<< orphan*/  SendPacketList; } ;
typedef  int /*<<< orphan*/  IPSECSA ;
typedef  TYPE_1__ IKE_SERVER ;
typedef  int /*<<< orphan*/  IKE_SA ;
typedef  int /*<<< orphan*/  IKE_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void FUNC14(IKE_SERVER *ike)
{
	UINT i;
	// Validate arguments
	if (ike == NULL)
	{
		return;
	}

	FUNC8(ike, NULL, NULL, NULL, "LI_STOPPING");

	for (i = 0;i < FUNC10(ike->SendPacketList);i++)
	{
		UDPPACKET *udp = FUNC9(ike->SendPacketList, i);

		FUNC7(udp);
	}

	FUNC12(ike->SendPacketList);

	FUNC0("Num of IPsec SAs: %u\n", FUNC10(ike->IPsecSaList));
	FUNC8(ike, NULL, NULL, NULL, "LI_NUM_IPSEC_SA", FUNC10(ike->IPsecSaList));

	for (i = 0;i < FUNC10(ike->IPsecSaList);i++)
	{
		IPSECSA *sa = FUNC9(ike->IPsecSaList, i);

		FUNC2(sa);
	}

	FUNC12(ike->IPsecSaList);

	FUNC0("Num of IKE SAs: %u\n", FUNC10(ike->IkeSaList));
	FUNC8(ike, NULL, NULL, NULL, "LI_NUM_IKE_SA", FUNC10(ike->IkeSaList));

	for (i = 0;i < FUNC10(ike->IkeSaList);i++)
	{
		IKE_SA *sa = FUNC9(ike->IkeSaList, i);

		FUNC5(sa);
	}

	FUNC12(ike->IkeSaList);

	FUNC0("Num of IKE_CLIENTs: %u\n", FUNC10(ike->ClientList));
	FUNC8(ike, NULL, NULL, NULL, "LI_NUM_IKE_CLIENTS", FUNC10(ike->ClientList));

	for (i = 0;i < FUNC10(ike->ClientList);i++)
	{
		IKE_CLIENT *c = FUNC9(ike->ClientList, i);

		FUNC3(ike, c);
	}

	FUNC12(ike->ClientList);

	FUNC13(ike->SockEvent);

	FUNC8(ike, NULL, NULL, NULL, "LI_STOP");

	FUNC11(ike->Cedar);

	FUNC4(ike->Engine);

	FUNC0("FreeThreadList()...\n");
	FUNC6(ike->ThreadList);
	FUNC0("FreeThreadList() Done.\n");

	FUNC1(ike);
}