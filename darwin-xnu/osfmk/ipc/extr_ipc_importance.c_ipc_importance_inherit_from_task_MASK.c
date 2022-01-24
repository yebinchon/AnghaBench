#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  task_t ;
typedef  TYPE_3__* ipc_importance_task_t ;
typedef  TYPE_4__* ipc_importance_inherit_t ;
typedef  TYPE_5__* ipc_importance_elem_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_27__ {int /*<<< orphan*/  iie_task_refs_inherited; } ;
struct TYPE_32__ {TYPE_1__ iit_elem; } ;
struct TYPE_31__ {int /*<<< orphan*/  iie_kmsg_refs_dropped; int /*<<< orphan*/  iie_kmsg_refs_coalesced; int /*<<< orphan*/  iie_kmsg_refs_inherited; int /*<<< orphan*/  iie_kmsg_refs_added; } ;
struct TYPE_30__ {scalar_t__ iii_donating; int iii_externcnt; int iii_bits; int iii_depth; int /*<<< orphan*/  iii_elem; int /*<<< orphan*/  iii_kmsgs; TYPE_5__* iii_from_elem; TYPE_3__* iii_to_task; scalar_t__ iii_externdrop; scalar_t__ iii_made; } ;
struct TYPE_28__ {int /*<<< orphan*/  iie_task_refs_coalesced; int /*<<< orphan*/  iie_task_refs_added_inherit_from; } ;
struct TYPE_29__ {int iit_externcnt; TYPE_2__ iit_elem; int /*<<< orphan*/  iit_externdrop; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 TYPE_5__* IIE_NULL ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int IIE_TYPE_INHERIT ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 TYPE_4__* III_NULL ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ III_REFS_MAX ; 
 TYPE_3__* IIT_NULL ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__* FUNC7 (TYPE_5__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  ipc_importance_inherit_zone ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_7__* task_imp ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static ipc_importance_inherit_t
FUNC20(
	task_t from_task,
	task_t to_task)
{
	ipc_importance_task_t	to_task_imp = IIT_NULL;
	ipc_importance_task_t	from_task_imp = IIT_NULL;
	ipc_importance_elem_t 	from_elem = IIE_NULL;

	ipc_importance_inherit_t inherit = III_NULL;
	ipc_importance_inherit_t alloc = III_NULL;
	boolean_t donating;
	uint32_t depth = 1;

	to_task_imp = FUNC6(to_task, FALSE);
	from_task_imp = FUNC6(from_task, FALSE);
	from_elem = (ipc_importance_elem_t)from_task_imp;

	FUNC10();

	if (IIT_NULL == to_task_imp || IIT_NULL == from_task_imp) {
		goto out_locked;
	}

	/*
	 * No need to set up an inherit linkage if the to_task or from_task
	 * isn't a receiver of one type or the other.
	 */
	if (!FUNC13(to_task_imp) ||
	    !FUNC13(from_task_imp)) {
		goto out_locked;
	}

	/* Do not allow to create a linkage to self */
	if (to_task_imp == from_task_imp) {
		goto out_locked;
	}

	FUNC4(to_task_imp->iit_elem.iie_task_refs_added_inherit_from);
	FUNC4(from_elem->iie_kmsg_refs_added);

	/*
	 * Now that we have the from_elem figured out,
	 * check to see if we already have an inherit for this pairing
	 */
	while (III_NULL == inherit) {
		inherit = FUNC7(from_elem, to_task_imp, depth);

		/* Do we have to allocate a new inherit */
		if (III_NULL == inherit) {
			if (III_NULL != alloc) {
				break;
			}

			/* allocate space */
			FUNC16();
			alloc = (ipc_importance_inherit_t)
				FUNC18(ipc_importance_inherit_zone);
			FUNC10();
		}
	}

	/* snapshot the donating status while we have importance locked */
	donating = FUNC14(from_task_imp);

	if (III_NULL != inherit) {
		/* We found one, piggyback on that */
		FUNC3(0 < FUNC2(inherit));
		FUNC3(0 < FUNC0(inherit->iii_from_elem));

		/* Take a reference for inherit */
		FUNC3(III_REFS_MAX > FUNC2(inherit));
		FUNC9(inherit);

		/* Reflect the inherit's change of status into the task boosts */
		if (0 == FUNC1(inherit)) {
			FUNC3(!inherit->iii_donating);
			inherit->iii_donating = donating;
			if (donating) {
				to_task_imp->iit_externcnt += inherit->iii_externcnt;
				to_task_imp->iit_externdrop += inherit->iii_externdrop;
			}
		} else {
			FUNC3(donating == inherit->iii_donating);
		}

		/* add in a external reference for this use of the inherit */
		inherit->iii_externcnt++;
	} else {
		/* initialize the previously allocated space */
		inherit = alloc;
		inherit->iii_bits = IIE_TYPE_INHERIT | 1;
		inherit->iii_made = 0;
		inherit->iii_externcnt = 1;
		inherit->iii_externdrop = 0;
		inherit->iii_depth = depth;
		inherit->iii_to_task = to_task_imp;
		inherit->iii_from_elem = IIE_NULL;
		FUNC17(&inherit->iii_kmsgs);

		if (donating) {
			inherit->iii_donating = TRUE;
		} else {
			inherit->iii_donating = FALSE;
		}

		/*
		 * Chain our new inherit on the element it inherits from.
		 * The new inherit takes our reference on from_elem.
		 */
		FUNC8(inherit, from_elem);

#if IIE_REF_DEBUG
		ipc_importance_counter_init(&inherit->iii_elem);
		from_elem->iie_kmsg_refs_inherited++;
		task_imp->iit_elem.iie_task_refs_inherited++;
#endif
	}

out_locked:

	/* If found inherit and donating, reflect that in the task externcnt */
	if (III_NULL != inherit && donating) {
		to_task_imp->iit_externcnt++;
		/* take the internal assertion */
		FUNC12(to_task_imp, 1);
		/* may have dropped and retaken importance lock */
	}

	/* If we didn't create a new inherit, we have some resources to release */
	if (III_NULL == inherit || inherit != alloc) {
		if (IIE_NULL != from_elem) {
			if (III_NULL != inherit) {
				FUNC4(from_elem->iie_kmsg_refs_coalesced);
			} else {
				FUNC4(from_elem->iie_kmsg_refs_dropped);
			}
			FUNC11(from_elem);
			/* importance unlocked */
		} else {
			FUNC16();
		}

		if (IIT_NULL != to_task_imp) {
			if (III_NULL != inherit) {
				FUNC4(to_task_imp->iit_elem.iie_task_refs_coalesced);
			}
			FUNC15(to_task_imp);
		}

		if (III_NULL != alloc) {
			FUNC19(ipc_importance_inherit_zone, alloc);
		}
	} else {
		/* from_elem and to_task_imp references transferred to new inherit */
		FUNC16();
	}

	return inherit;
}