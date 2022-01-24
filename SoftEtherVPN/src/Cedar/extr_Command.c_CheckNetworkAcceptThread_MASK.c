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
typedef  scalar_t__ UINT ;
struct TYPE_2__ {int /*<<< orphan*/  k; int /*<<< orphan*/  x; int /*<<< orphan*/ * s; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ CHECK_NETWORK_2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(THREAD *thread, void *param)
{
	CHECK_NETWORK_2 *c = (CHECK_NETWORK_2 *)param;
	SOCK *s = c->s;
	UINT i = 0;

	if (FUNC3(s, c->x, c->k))
	{
		while (true)
		{
			i++;
			if (FUNC2(s, &i, sizeof(UINT), true) == 0)
			{
				break;
			}
		}
	}

	FUNC0(s);
	FUNC1(s);
}