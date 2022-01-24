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
typedef  int /*<<< orphan*/  queue_entry_t ;
struct TYPE_3__ {int OSMT_state; int /*<<< orphan*/  OSMT_name; int /*<<< orphan*/  OSMT_refcnt; } ;
typedef  TYPE_1__* OSMallocTag ;

/* Variables and functions */
 int OSMT_RELEASED ; 
 int OSMT_VALID ; 
 int OSMT_VALID_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(
	 OSMallocTag		tag)
{
	if (!((tag->OSMT_state & OSMT_VALID_MASK) == OSMT_VALID))
		FUNC5("OSMalloc_Tagref():'%s' has bad state 0x%08X\n", tag->OSMT_name, tag->OSMT_state);

	if (FUNC2(&tag->OSMT_refcnt, 1) == 0) {
		if (FUNC3(OSMT_VALID|OSMT_RELEASED, OSMT_VALID|OSMT_RELEASED, &tag->OSMT_state)) {
			FUNC0();
			(void)FUNC6((queue_entry_t)tag);
			FUNC1();
			FUNC4((void*)tag, sizeof(*tag));
		} else
			FUNC5("OSMalloc_Tagrele():'%s' has refcnt 0\n", tag->OSMT_name);
	}
}