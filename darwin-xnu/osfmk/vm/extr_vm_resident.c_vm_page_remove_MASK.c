#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;
typedef  struct TYPE_30__   TYPE_14__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_page_packed_t ;
struct TYPE_33__ {int /*<<< orphan*/  cur_count; int /*<<< orphan*/  page_list; } ;
typedef  TYPE_3__ vm_page_bucket_t ;
typedef  TYPE_4__* vm_object_t ;
typedef  scalar_t__ vm_object_offset_t ;
typedef  TYPE_5__* task_t ;
typedef  int /*<<< orphan*/  lck_spin_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_36__ {scalar_t__ reusable_count; int /*<<< orphan*/  reused_remove; } ;
struct TYPE_35__ {int /*<<< orphan*/  ledger; } ;
struct TYPE_31__ {scalar_t__ prev; scalar_t__ next; } ;
struct TYPE_34__ {scalar_t__ resident_page_count; scalar_t__ wired_page_count; scalar_t__ reusable_page_count; scalar_t__ purgable; scalar_t__ set_cache_attr; int /*<<< orphan*/  vo_ledger_tag; scalar_t__ all_reusable; int /*<<< orphan*/  wire_tag; TYPE_1__ cached_list; scalar_t__ internal; } ;
struct TYPE_32__ {int vmp_tabled; scalar_t__ vmp_wire_count; scalar_t__ vmp_offset; scalar_t__ vmp_object; void* vmp_reusable; scalar_t__ vmp_xpmapped; int /*<<< orphan*/  vmp_next_m; void* vmp_hashed; int /*<<< orphan*/  vmp_laundry; int /*<<< orphan*/  vmp_cleaning; } ;
struct TYPE_30__ {int phys_footprint; } ;

/* Variables and functions */
 int BUCKETS_PER_LOCK ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 TYPE_5__* TASK_NULL ; 
 scalar_t__ TRUE ; 
 TYPE_5__* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_4__* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 scalar_t__ VM_PURGABLE_DENY ; 
 scalar_t__ VM_PURGABLE_EMPTY ; 
 scalar_t__ VM_PURGABLE_NONVOLATILE ; 
 scalar_t__ VM_PURGABLE_VOLATILE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,TYPE_4__*,scalar_t__,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XPR_VM_PAGE ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_14__ task_ledgers ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*) ; 
 int /*<<< orphan*/ * vm_page_bucket_locks ; 
 TYPE_3__* vm_page_buckets ; 
 scalar_t__ vm_page_external_count ; 
 int FUNC22 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ vm_page_internal_count ; 
 scalar_t__ vm_page_purgeable_count ; 
 scalar_t__ vm_page_purgeable_wired_count ; 
 int /*<<< orphan*/  vm_page_queue_lock ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 TYPE_6__ vm_page_stats_reusable ; 
 scalar_t__ vm_page_xpmapped_external_count ; 

void
FUNC24(
	vm_page_t	mem,
	boolean_t	remove_from_hash)
{
	vm_page_bucket_t *bucket;
	vm_page_t	this;
	lck_spin_t	*bucket_lock;
	int		hash_id;
	task_t		owner;
	vm_object_t	m_object;
	int		ledger_idx_volatile;
	int		ledger_idx_nonvolatile;
	int		ledger_idx_volatile_compressed;
	int		ledger_idx_nonvolatile_compressed;
	int		do_footprint;

	m_object = FUNC8(mem);

        FUNC13(XPR_VM_PAGE,
                "vm_page_remove, object 0x%X offset 0x%X page 0x%X\n",
                m_object, mem->vmp_offset, 
		mem, 0,0);

	FUNC21(m_object);
	FUNC14(mem->vmp_tabled);
	FUNC14(!mem->vmp_cleaning);
	FUNC14(!mem->vmp_laundry);

	if (FUNC10(mem)) {
		FUNC0(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);
	}
#if 0
	/*
	 * we don't hold the page queue lock
	 * so this check isn't safe to make
	 */
	VM_PAGE_CHECK(mem);
#endif
	if (remove_from_hash == TRUE) {
		/*
		 *	Remove from the object_object/offset hash table
		 */
		hash_id = FUNC22(m_object, mem->vmp_offset);
		bucket = &vm_page_buckets[hash_id];
		bucket_lock = &vm_page_bucket_locks[hash_id / BUCKETS_PER_LOCK];

		FUNC15(bucket_lock);

		if ((this = (vm_page_t)(FUNC11(bucket->page_list))) == mem) {
			/* optimize for common case */

			bucket->page_list = mem->vmp_next_m;
		} else {
			vm_page_packed_t	*prev;

			for (prev = &this->vmp_next_m;
			     (this = (vm_page_t)(FUNC11(*prev))) != mem;
			     prev = &this->vmp_next_m)
				continue;
			*prev = this->vmp_next_m;
		}
#if     MACH_PAGE_HASH_STATS
		bucket->cur_count--;
#endif /* MACH_PAGE_HASH_STATS */
		mem->vmp_hashed = FALSE;
		this->vmp_next_m = FUNC9(NULL);
		FUNC16(bucket_lock);
	}
	/*
	 *	Now remove from the object's list of backed pages.
	 */

	FUNC23(mem);

	/*
	 *	And show that the object has one fewer resident
	 *	page.
	 */

	FUNC14(m_object->resident_page_count > 0);
	m_object->resident_page_count--;

	if (m_object->internal) {
#if DEBUG
		assert(vm_page_internal_count);
#endif /* DEBUG */

		FUNC1(-1, &vm_page_internal_count);
	} else {
		FUNC14(vm_page_external_count);
		FUNC1(-1, &vm_page_external_count);

		if (mem->vmp_xpmapped) {
			FUNC14(vm_page_xpmapped_external_count);
			FUNC1(-1, &vm_page_xpmapped_external_count);
		}
	}
	if (!m_object->internal &&
	    m_object->cached_list.next &&
	    m_object->cached_list.prev) {
		if (m_object->resident_page_count == 0)
			FUNC19(m_object);
	}

	if (FUNC12(mem)) {
		FUNC14(mem->vmp_wire_count > 0);
		FUNC5(m_object);
		FUNC3(m_object, mem);
		FUNC4(m_object, m_object->wire_tag);
	}
	FUNC14(m_object->resident_page_count >=
	       m_object->wired_page_count);
	if (mem->vmp_reusable) {
		FUNC14(m_object->reusable_page_count > 0);
		m_object->reusable_page_count--;
		FUNC14(m_object->reusable_page_count <=
		       m_object->resident_page_count);
		mem->vmp_reusable = FALSE;
		FUNC1(-1, &vm_page_stats_reusable.reusable_count);
		vm_page_stats_reusable.reused_remove++;
	} else if (m_object->all_reusable) {
		FUNC1(-1, &vm_page_stats_reusable.reusable_count);
		vm_page_stats_reusable.reused_remove++;
	}

	if (m_object->purgable == VM_PURGABLE_DENY &&
	    ! m_object->vo_ledger_tag) {
		owner = TASK_NULL;
	} else {
		owner = FUNC2(m_object);
		FUNC20(m_object,
					     &ledger_idx_volatile,
					     &ledger_idx_nonvolatile,
					     &ledger_idx_volatile_compressed,
					     &ledger_idx_nonvolatile_compressed,
					     &do_footprint);
	}
	if (owner &&
	    (m_object->purgable == VM_PURGABLE_NONVOLATILE ||
	     m_object->purgable == VM_PURGABLE_DENY ||
	     FUNC12(mem))) {
		/* less non-volatile bytes */
		FUNC17(owner->ledger,
			     ledger_idx_nonvolatile,
			     PAGE_SIZE);
		if (do_footprint) {
			/* less footprint */
			FUNC17(owner->ledger,
				     task_ledgers.phys_footprint,
				     PAGE_SIZE);
		}
	} else if (owner &&
		   (m_object->purgable == VM_PURGABLE_VOLATILE ||
		    m_object->purgable == VM_PURGABLE_EMPTY)) {
		FUNC14(! FUNC12(mem));
		/* less volatile bytes */
		FUNC17(owner->ledger,
			     ledger_idx_volatile,
			     PAGE_SIZE);
	}
	if (m_object->purgable == VM_PURGABLE_VOLATILE) {
		if (FUNC12(mem)) {
			FUNC14(vm_page_purgeable_wired_count > 0);
			FUNC1(-1, &vm_page_purgeable_wired_count);
		} else {
			FUNC14(vm_page_purgeable_count > 0);
			FUNC1(-1, &vm_page_purgeable_count);
		}
	}

	if (m_object->set_cache_attr == TRUE)
		FUNC18(FUNC7(mem), 0);

	mem->vmp_tabled = FALSE;
	mem->vmp_object = 0;
	mem->vmp_offset = (vm_object_offset_t) -1;
}