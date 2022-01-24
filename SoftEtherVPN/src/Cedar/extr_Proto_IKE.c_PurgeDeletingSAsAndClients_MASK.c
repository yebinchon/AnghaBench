#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/ * ClientList; int /*<<< orphan*/ * IPsecSaList; int /*<<< orphan*/ * IkeSaList; } ;
struct TYPE_14__ {scalar_t__ Deleting; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ IPSECSA ;
typedef  TYPE_2__ IKE_SERVER ;
typedef  TYPE_1__ IKE_SA ;
typedef  TYPE_1__ IKE_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(IKE_SERVER *ike)
{
	UINT i;
	LIST *o = NULL;
	// Validate arguments
	if (ike == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC2(ike->IkeSaList);i++)
	{
		IKE_SA *sa = FUNC1(ike->IkeSaList, i);
		if (sa->Deleting)
		{
			if (o == NULL)
			{
				o = FUNC3(NULL);
			}

			FUNC0(o, sa);
		}
	}

	for (i = 0;i < FUNC2(o);i++)
	{
		IKE_SA *sa = FUNC1(o, i);

		FUNC6(ike, sa);
	}

	FUNC7(o);

	o = NULL;

	for (i = 0;i < FUNC2(ike->IPsecSaList);i++)
	{
		IPSECSA *sa = FUNC1(ike->IPsecSaList, i);
		if (sa->Deleting)
		{
			if (o == NULL)
			{
				o = FUNC3(NULL);
			}

			FUNC0(o, sa);
		}
	}

	for (i = 0;i < FUNC2(o);i++)
	{
		IPSECSA *sa = FUNC1(o, i);

		FUNC4(ike, sa);
	}

	FUNC7(o);

	o = NULL;

	for (i = 0;i < FUNC2(ike->ClientList);i++)
	{
		IKE_CLIENT *c = FUNC1(ike->ClientList, i);
		if (c->Deleting)
		{
			if (o == NULL)
			{
				o = FUNC3(NULL);
			}

			FUNC0(o, c);
		}
	}

	for (i = 0;i < FUNC2(o);i++)
	{
		IKE_CLIENT *c = FUNC1(o, i);

		FUNC5(ike, c);
	}

	FUNC7(o);
}