#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  Thread; int /*<<< orphan*/  Cancel; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ KEEP ;

/* Variables and functions */
 int /*<<< orphan*/  KeepThread ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 

KEEP *FUNC5()
{
	KEEP *k = FUNC4(sizeof(KEEP));

	k->lock = FUNC2();
	k->HaltEvent = FUNC1();
	k->Cancel = FUNC0();

	// Thread start
	k->Thread = FUNC3(KeepThread, k);

	return k;
}