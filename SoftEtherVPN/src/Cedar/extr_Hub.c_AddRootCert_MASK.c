#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {TYPE_1__* HubDb; } ;
struct TYPE_4__ {int /*<<< orphan*/  RootCertList; } ;
typedef  TYPE_1__ HUBDB ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_HUB_CERTS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(HUB *hub, X *x)
{
	HUBDB *db;
	// Validate arguments
	if (hub == NULL || x == NULL)
	{
		return;
	}

	db = hub->HubDb;
	if (db != NULL)
	{
		FUNC5(db->RootCertList);
		{
			if (FUNC4(db->RootCertList) < MAX_HUB_CERTS)
			{
				UINT i;
				bool ok = true;

				for (i = 0;i < FUNC4(db->RootCertList);i++)
				{
					X *exist_x = FUNC3(db->RootCertList, i);
					if (FUNC1(exist_x, x))
					{
						ok = false;
						break;
					}
				}

				if (ok)
				{
					FUNC2(db->RootCertList, FUNC0(x));
				}
			}
		}
		FUNC6(db->RootCertList);
	}
}