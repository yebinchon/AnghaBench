#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_10__ {int /*<<< orphan*/  Id; } ;
struct TYPE_9__ {int /*<<< orphan*/  LockSettings; int /*<<< orphan*/  EtherIPIdListSettingVerNo; int /*<<< orphan*/  EtherIPIdList; } ;
typedef  TYPE_1__ IPSEC_SERVER ;
typedef  TYPE_2__ ETHERIP_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

bool FUNC7(IPSEC_SERVER *s, char *id_str)
{
	bool ret = false;
	// Validate arguments
	if (s == NULL || id_str == NULL)
	{
		return false;
	}

	FUNC2(s->LockSettings);
	{
		// If there is the same key, remove them
		ETHERIP_ID t, *k;

		FUNC6(&t, sizeof(t));

		FUNC4(t.Id, sizeof(t.Id), id_str);

		k = FUNC3(s->EtherIPIdList, &t);

		if (k != NULL)
		{
			FUNC0(s->EtherIPIdList, k);

			FUNC1(k);

			ret = true;

			s->EtherIPIdListSettingVerNo++;
		}
	}
	FUNC5(s->LockSettings);

	return ret;
}