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
typedef  int /*<<< orphan*/  x86_debug_state32_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  TYPE_1__* pcb_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_3__ {int /*<<< orphan*/ * ids; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ids_zone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static kern_return_t
FUNC8(thread_t thread, x86_debug_state32_t *ds)
{
	x86_debug_state32_t *new_ids;
	pcb_t pcb;

	pcb = FUNC0(thread);

	if (FUNC3(ds) != TRUE) {
		return KERN_INVALID_ARGUMENT;
	}

	if (pcb->ids == NULL) {
		new_ids = FUNC6(ids_zone);
		FUNC1(new_ids, sizeof *new_ids);

		FUNC4(&pcb->lock);
		/* make sure it wasn't already alloc()'d elsewhere */
		if (pcb->ids == NULL) {
			pcb->ids = new_ids;
			FUNC5(&pcb->lock);
		} else {
			FUNC5(&pcb->lock);
			FUNC7(ids_zone, new_ids);
		}
	}


	FUNC2(ds, pcb->ids, FALSE);

	return (KERN_SUCCESS);
}