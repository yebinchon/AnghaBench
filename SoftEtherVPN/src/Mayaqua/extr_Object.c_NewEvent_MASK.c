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
struct TYPE_5__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_NEWEVENT_COUNT ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

EVENT *FUNC4()
{
	// Memory allocation
	EVENT *e = FUNC1(sizeof(EVENT));

	// Reference counter
	e->ref = FUNC2();

	// Event initialization
	FUNC3(e);

	// KS
	FUNC0(KS_NEWEVENT_COUNT);

	return e;
}