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
struct TYPE_3__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  Ip; int /*<<< orphan*/  Ok; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ NAT_DNS_QUERY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(THREAD *t, void *param)
{
	NAT_DNS_QUERY *q;
	// Validate arguments
	if (t == NULL || param == NULL)
	{
		return;
	}

	q = (NAT_DNS_QUERY *)param;
	FUNC0(t);

	q->Ok = FUNC3(&q->Ip, q->Hostname);

	FUNC1(t);

	if (FUNC4(q->ref) == 0)
	{
		FUNC2(q);
	}
}