#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_14__ {int /*<<< orphan*/  Id; } ;
struct TYPE_13__ {int /*<<< orphan*/  LockSettings; int /*<<< orphan*/  EtherIPIdListSettingVerNo; int /*<<< orphan*/  EtherIPIdList; } ;
typedef  TYPE_1__ IPSEC_SERVER ;
typedef  TYPE_2__ ETHERIP_ID ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 

void FUNC9(IPSEC_SERVER *s, ETHERIP_ID *id)
{
	// Validate arguments
	if (s == NULL || id == NULL)
	{
		return;
	}

	FUNC4(s->LockSettings);
	{
		// If there is the same key, remove them
		ETHERIP_ID t, *k;

		FUNC8(&t, sizeof(t));

		FUNC6(t.Id, sizeof(t.Id), id->Id);

		k = FUNC5(s->EtherIPIdList, &t);

		if (k != NULL)
		{
			FUNC1(s->EtherIPIdList, k);

			FUNC2(k);
		}

		// Add
		k = FUNC0(id, sizeof(ETHERIP_ID));

		FUNC3(s->EtherIPIdList, k);

		s->EtherIPIdListSettingVerNo++;
	}
	FUNC7(s->LockSettings);
}