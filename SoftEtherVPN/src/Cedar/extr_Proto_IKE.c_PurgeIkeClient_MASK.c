#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_12__ {int /*<<< orphan*/ * IkeClient; } ;
struct TYPE_11__ {int /*<<< orphan*/  ClientList; int /*<<< orphan*/  IPsecSaList; int /*<<< orphan*/  IkeSaList; } ;
struct TYPE_10__ {int /*<<< orphan*/ * IkeClient; } ;
typedef  TYPE_1__ IPSECSA ;
typedef  TYPE_2__ IKE_SERVER ;
typedef  TYPE_3__ IKE_SA ;
typedef  int /*<<< orphan*/  IKE_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 

void FUNC6(IKE_SERVER *ike, IKE_CLIENT *c)
{
	UINT i;
	// Validate arguments
	if (ike == NULL || c == NULL)
	{
		return;
	}

	// Delete all of IPsec SA and IKE SA that belong to this IKE Client
	for (i = 0;i < FUNC3(ike->IkeSaList);i++)
	{
		IKE_SA *sa = FUNC2(ike->IkeSaList, i);

		if (sa->IkeClient == c)
		{
			FUNC5(ike, sa);
		}
	}
	for (i = 0;i < FUNC3(ike->IPsecSaList);i++)
	{
		IPSECSA *sa = FUNC2(ike->IPsecSaList, i);

		if (sa->IkeClient == c)
		{
			FUNC4(ike, sa);
		}
	}

	FUNC0(ike->ClientList, c);
	FUNC1(ike, c);
}