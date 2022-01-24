#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cnt; int pos; } ;

/* Variables and functions */
 int M ; 
 int active_pos ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* max ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 () ; 

__attribute__((used)) static void
FUNC3(void)
{
	int i, m, c;

	m = max[0].cnt;

	if (max[0].cnt == 1)
	{
		FUNC1("no solution!\n");
		FUNC0(1);
	}
	c = 0;
	for (i = 0; i < M; i++)
	{
		if (m == max[i].cnt)
		{
			c++;
		}
	}

	i = FUNC2() % c;
	active_pos = max[i].pos;
	FUNC1("0x%03X (%d) ", active_pos, max[i].cnt);
}