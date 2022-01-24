#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_11__ {int /*<<< orphan*/  Id; } ;
struct TYPE_10__ {int /*<<< orphan*/  LockSettings; int /*<<< orphan*/  EtherIPIdList; } ;
typedef  TYPE_1__ IPSEC_SERVER ;
typedef  TYPE_2__ ETHERIP_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

bool FUNC6(IPSEC_SERVER *s, ETHERIP_ID *id, char *id_str)
{
	bool ret = false;
	// Validate arguments
	if (s == NULL || id == NULL || id_str == NULL)
	{
		return false;
	}

	FUNC1(s->LockSettings);
	{
		ETHERIP_ID t, *k;

		FUNC5(&t, sizeof(t));

		FUNC3(t.Id, sizeof(t.Id), id_str);

		k = FUNC2(s->EtherIPIdList, &t);

		if (k != NULL)
		{
			FUNC0(id, k, sizeof(ETHERIP_ID));

			ret = true;
		}
	}
	FUNC4(s->LockSettings);

	return ret;
}