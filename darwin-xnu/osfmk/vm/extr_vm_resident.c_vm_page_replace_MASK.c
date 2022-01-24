#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  void* vm_page_packed_t ;
struct TYPE_14__ {void* page_list; } ;
typedef  TYPE_2__ vm_page_bucket_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  scalar_t__ vm_object_offset_t ;
typedef  int /*<<< orphan*/  lck_spin_t ;
struct TYPE_13__ {scalar_t__ vmp_object; scalar_t__ vmp_offset; int /*<<< orphan*/  vmp_hashed; void* vmp_next_m; scalar_t__ vmp_tabled; } ;

/* Variables and functions */
 int BUCKETS_PER_LOCK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * vm_page_bucket_locks ; 
 TYPE_2__* vm_page_buckets ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_page_queue_lock ; 

void
FUNC15(
	vm_page_t		mem,
	vm_object_t		object,
	vm_object_offset_t	offset)
{
	vm_page_bucket_t *bucket;
	vm_page_t	 found_m = VM_PAGE_NULL;
	lck_spin_t	*bucket_lock;
	int		hash_id;

#if 0
	/*
	 * we don't hold the page queue lock
	 * so this check isn't safe to make
	 */
	VM_PAGE_CHECK(mem);
#endif
	FUNC11(object);
#if DEBUG || VM_PAGE_CHECK_BUCKETS
	if (mem->vmp_tabled || mem->vmp_object)
		panic("vm_page_replace: page %p for (obj=%p,off=0x%llx) "
		      "already in (obj=%p,off=0x%llx)",
		      mem, object, offset, VM_PAGE_OBJECT(mem), mem->vmp_offset);
#endif
	FUNC0(&vm_page_queue_lock, LCK_MTX_ASSERT_NOTOWNED);

	FUNC7(!FUNC5(mem));

	/*
	 *	Record the object/offset pair in this page
	 */
	mem->vmp_object = FUNC3(object);
	mem->vmp_offset = offset;

	/*
	 *	Insert it into the object_object/offset hash table,
	 *	replacing any page that might have been there.
	 */

	hash_id = FUNC13(object, offset);
	bucket = &vm_page_buckets[hash_id];
	bucket_lock = &vm_page_bucket_locks[hash_id / BUCKETS_PER_LOCK];

	FUNC8(bucket_lock);

	if (bucket->page_list) {
		vm_page_packed_t *mp = &bucket->page_list;
		vm_page_t m = (vm_page_t)(FUNC6(*mp));

		do {
			/*
			 * compare packed object pointers
			 */
			if (m->vmp_object == mem->vmp_object && m->vmp_offset == offset) {
				/*
				 * Remove old page from hash list
				 */
				*mp = m->vmp_next_m;
				m->vmp_hashed = FALSE;
				m->vmp_next_m = FUNC4(NULL);

				found_m = m;
				break;
			}
			mp = &m->vmp_next_m;
		} while ((m = (vm_page_t)(FUNC6(*mp))));

		mem->vmp_next_m = bucket->page_list;
	} else {
		mem->vmp_next_m = FUNC4(NULL);
	}
	/*
	 * insert new page at head of hash list
	 */
	bucket->page_list = FUNC4(mem);
	mem->vmp_hashed = TRUE;

	FUNC9(bucket_lock);

	if (found_m) {
	        /*
		 * there was already a page at the specified
		 * offset for this object... remove it from
		 * the object and free it back to the free list
		 */
		FUNC12(found_m, FALSE);
	}
	FUNC14(mem, object, offset, VM_KERN_MEMORY_NONE, FALSE, FALSE, FALSE, FALSE, NULL);
}