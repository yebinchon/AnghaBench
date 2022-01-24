#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ref; } ;
struct TYPE_7__ {int /*<<< orphan*/  ThreadList; int /*<<< orphan*/  Engine; void* ClientList; void* IPsecSaList; void* IkeSaList; void* SendPacketList; int /*<<< orphan*/  Now; int /*<<< orphan*/ * IPsec; TYPE_2__* Cedar; } ;
typedef  int /*<<< orphan*/  IPSEC_SERVER ;
typedef  TYPE_1__ IKE_SERVER ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * CmpIPsecSa ; 
 int /*<<< orphan*/ * CmpIkeClient ; 
 int /*<<< orphan*/ * CmpIkeSa ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (int) ; 

IKE_SERVER *FUNC7(CEDAR *cedar, IPSEC_SERVER *ipsec)
{
	IKE_SERVER *ike;
	// Validate arguments
	if (cedar == NULL)
	{
		return NULL;
	}

	ike = FUNC6(sizeof(IKE_SERVER));

	ike->Cedar = cedar;
	FUNC0(cedar->ref);

	ike->IPsec = ipsec;

	ike->Now = FUNC5();

	ike->SendPacketList = FUNC3(NULL);

	ike->IkeSaList = FUNC3(CmpIkeSa);

	ike->IPsecSaList = FUNC3(CmpIPsecSa);

	ike->ClientList = FUNC3(CmpIkeClient);

	ike->Engine = FUNC2();

	ike->ThreadList = FUNC4();

	FUNC1(ike, NULL, NULL, NULL, "LI_START");

	return ike;
}