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
typedef  int /*<<< orphan*/  mark_str2 ;
typedef  int /*<<< orphan*/  ip_str2 ;
typedef  int /*<<< orphan*/  ip_str1 ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  ConditionAndArgs; int /*<<< orphan*/  Chain; } ;
struct TYPE_6__ {int /*<<< orphan*/  EntryList; } ;
typedef  TYPE_1__ IPTABLES_STATE ;
typedef  TYPE_2__ IPTABLES_ENTRY ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 

IPTABLES_ENTRY *FUNC7(IPTABLES_STATE *s, char *chain, IP *src_ip, IP *dest_ip, UINT mark)
{
	char ip_str1[64];
	char ip_str2[64];
	char mark_str1[64];
	char mark_str2[64];
	UINT i;
	if (s == NULL || chain == NULL || src_ip == NULL || dest_ip == NULL || mark == 0)
	{
		return NULL;
	}

	FUNC1(ip_str1, sizeof(ip_str1), src_ip);
	FUNC1(ip_str2, sizeof(ip_str2), dest_ip);
	FUNC6(mark_str1, mark);
	FUNC0(mark_str2, sizeof(mark_str2), "%x", mark);

	for (i = 0;i < FUNC4(s->EntryList);i++)
	{
		IPTABLES_ENTRY *e = FUNC3(s->EntryList, i);

		if (FUNC5(e->Chain, chain) == 0)
		{
			if (FUNC2(e->ConditionAndArgs, ip_str1) &&
				FUNC2(e->ConditionAndArgs, ip_str2) &&
				(FUNC2(e->ConditionAndArgs, mark_str1) || FUNC2(e->ConditionAndArgs, mark_str2)))
			{
				return e;
			}
		}
	}

	return NULL;
}