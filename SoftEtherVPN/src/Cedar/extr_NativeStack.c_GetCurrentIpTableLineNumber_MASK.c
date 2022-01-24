#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  LineNumber; } ;
typedef  int /*<<< orphan*/  IPTABLES_STATE ;
typedef  TYPE_1__ IPTABLES_ENTRY ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

UINT FUNC3(char *chain, IP *src_ip, IP *dest_ip, UINT mark)
{
	IPTABLES_STATE *s;
	IPTABLES_ENTRY *e;
	UINT ret = 0;

	if (chain == NULL || src_ip == NULL || dest_ip == NULL || mark == 0)
	{
		return 0;
	}

	s = FUNC1();

	e = FUNC2(s, chain, src_ip, dest_ip, mark);

	if (e != NULL)
	{
		ret = e->LineNumber;
	}

	FUNC0(s);

	return ret;
}