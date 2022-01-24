#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ipc_pset_t ;
struct TYPE_7__ {int /*<<< orphan*/  io_bits; } ;
struct TYPE_8__ {int /*<<< orphan*/  ips_messages; TYPE_1__ ips_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_BITS_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void
FUNC9(
	ipc_pset_t	pset)
{
	FUNC0(FUNC6(pset));

	pset->ips_object.io_bits &= ~IO_BITS_ACTIVE;

	/*
	 * remove all the member message queues
	 * AND remove this message queue from any containing sets
	 */
	FUNC5(&pset->ips_messages);

	/*
	 * Set all waiters on the portset running to
	 * discover the change.
	 */
	FUNC1(&pset->ips_messages);
	FUNC3(&pset->ips_messages);
	FUNC2(&pset->ips_messages);

	FUNC4(&pset->ips_messages);

	FUNC8(pset);
	FUNC7(pset);       /* consume the ref our caller gave us */
}