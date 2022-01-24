#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_purgable_t ;
typedef  TYPE_1__* vm_object_t ;
typedef  TYPE_2__* task_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_12__ {int phys_footprint; } ;
struct TYPE_11__ {int /*<<< orphan*/  ledger; } ;
struct TYPE_10__ {scalar_t__ purgable; int resident_page_count; int wired_page_count; int /*<<< orphan*/ * pager; } ;

/* Variables and functions */
 scalar_t__ VM_CONFIG_COMPRESSOR_IS_PRESENT ; 
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ VM_PURGABLE_DENY ; 
 int /*<<< orphan*/  VM_PURGABLE_EMPTY ; 
 int /*<<< orphan*/  VM_PURGABLE_NONVOLATILE ; 
 int /*<<< orphan*/  VM_PURGABLE_VOLATILE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_6__ task_ledgers ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int*,int*,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void
FUNC9(
	vm_object_t	object,
	vm_purgable_t	old_state)
{
	task_t		owner;
	int		resident_page_count;
	int		wired_page_count;
	int		compressed_page_count;
	int 		ledger_idx_volatile;
	int		ledger_idx_nonvolatile;
	int		ledger_idx_volatile_compressed;
	int		ledger_idx_nonvolatile_compressed;
	boolean_t	do_footprint;

	FUNC8(object);
	FUNC1(object->purgable != VM_PURGABLE_DENY);

	owner = FUNC0(object);
	if (owner == NULL ||
	    object->purgable == VM_PURGABLE_DENY)
		return;

	FUNC7(object,
				     &ledger_idx_volatile,
				     &ledger_idx_nonvolatile,
				     &ledger_idx_volatile_compressed,
				     &ledger_idx_nonvolatile_compressed,
				     &do_footprint);

	resident_page_count = object->resident_page_count;
	wired_page_count = object->wired_page_count;
	if (VM_CONFIG_COMPRESSOR_IS_PRESENT &&
	     object->pager != NULL) {
		compressed_page_count =
			FUNC6(object->pager);
	} else {
		compressed_page_count = 0;
	}

	if (old_state == VM_PURGABLE_VOLATILE ||
	    old_state == VM_PURGABLE_EMPTY) {
		/* less volatile bytes in ledger */
		FUNC3(owner->ledger,
			     ledger_idx_volatile,
			     FUNC5(resident_page_count - wired_page_count));
		/* less compressed volatile bytes in ledger */
		FUNC3(owner->ledger,
			     ledger_idx_volatile_compressed,
			     FUNC5(compressed_page_count));

		/* more non-volatile bytes in ledger */
		FUNC2(owner->ledger,
			      ledger_idx_nonvolatile,
			      FUNC5(resident_page_count - wired_page_count));
		/* more compressed non-volatile bytes in ledger */
		FUNC2(owner->ledger,
			      ledger_idx_nonvolatile_compressed,
			      FUNC5(compressed_page_count));
		if (do_footprint) {
			/* more footprint */
			FUNC2(owner->ledger,
				      task_ledgers.phys_footprint,
				      FUNC5(resident_page_count
					   + compressed_page_count
					   - wired_page_count));
		}

	} else if (old_state == VM_PURGABLE_NONVOLATILE) {

		/* less non-volatile bytes in ledger */
		FUNC3(owner->ledger,
			     ledger_idx_nonvolatile,
			     FUNC5(resident_page_count - wired_page_count));
		/* less compressed non-volatile bytes in ledger */
		FUNC3(owner->ledger,
			     ledger_idx_nonvolatile_compressed,
			     FUNC5(compressed_page_count));
		if (do_footprint) {
			/* less footprint */
			FUNC3(owner->ledger,
				     task_ledgers.phys_footprint,
				     FUNC5(resident_page_count
					  + compressed_page_count
					  - wired_page_count));
		}

		/* more volatile bytes in ledger */
		FUNC2(owner->ledger,
			      ledger_idx_volatile,
			      FUNC5(resident_page_count - wired_page_count));
		/* more compressed volatile bytes in ledger */
		FUNC2(owner->ledger,
			      ledger_idx_volatile_compressed,
			      FUNC5(compressed_page_count));
	} else {
		FUNC4("vm_purgeable_accounting(%p): "
		      "unexpected old_state=%d\n",
		      object, old_state);
	}

	FUNC8(object);
}