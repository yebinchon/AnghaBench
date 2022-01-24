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
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  IPsecSaList; } ;
struct TYPE_6__ {scalar_t__ MessageId; int ServerToClient; int Established; int /*<<< orphan*/ * IkeClient; } ;
typedef  TYPE_1__ IPSECSA ;
typedef  TYPE_2__ IKE_SERVER ;
typedef  int /*<<< orphan*/  IKE_CLIENT ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

IPSECSA *FUNC2(IKE_SERVER *ike, IKE_CLIENT *c, UINT message_id)
{
	UINT i;
	// Validate arguments
	if (ike == NULL || c == NULL || message_id == 0)
	{
		return NULL;
	}

	for (i = 0;i < FUNC1(ike->IPsecSaList);i++)
	{
		IPSECSA *sa = FUNC0(ike->IPsecSaList, i);

		if (sa->IkeClient == c)
		{
			if (sa->MessageId == message_id)
			{
				if (sa->ServerToClient == false)
				{
					if (sa->Established == false)
					{
						return sa;
					}
				}
			}
		}
	}

	return NULL;
}