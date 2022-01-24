#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* zone_t ;
typedef  int vm_offset_t ;
struct zone_page_metadata {int free_count; int /*<<< orphan*/  pages; scalar_t__ page_count; } ;
struct zone_free_element {int dummy; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  intermediate; int /*<<< orphan*/  all_free; int /*<<< orphan*/  any_free_foreign; } ;
struct TYPE_7__ {int /*<<< orphan*/  elem_size; int /*<<< orphan*/  countfree; int /*<<< orphan*/  count; TYPE_1__ pages; int /*<<< orphan*/  count_all_free_pages; scalar_t__ allows_foreign; int /*<<< orphan*/  zone_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASAN_HEAP_FREED ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* FUNC0 (struct zone_page_metadata*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct zone_page_metadata*) ; 
 struct zone_page_metadata* FUNC6 (struct zone_free_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct zone_page_metadata*) ; 
 int /*<<< orphan*/  FUNC10 (struct zone_page_metadata*,struct zone_free_element*) ; 
 int /*<<< orphan*/  FUNC11 (char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int zp_nopoison_cookie ; 
 int zp_poisoned_cookie ; 

__attribute__((used)) static inline void
FUNC13(zone_t      zone,
             vm_offset_t element,
             boolean_t   poison)
{
	vm_offset_t old_head;
	struct zone_page_metadata *page_meta;

	vm_offset_t *primary  = (vm_offset_t *) element;
	vm_offset_t *backup   = FUNC4(zone->elem_size, primary);

	page_meta = FUNC6((struct zone_free_element *)element, FALSE);
	FUNC2(FUNC0(page_meta) == zone);
	old_head = (vm_offset_t)FUNC9(page_meta);

	if (FUNC1(!FUNC7(zone, old_head)))
		FUNC11("zfree: invalid head pointer %p for freelist of zone %s\n",
		      (void *) old_head, zone->zone_name);

	if (FUNC1(!FUNC7(zone, element)))
		FUNC11("zfree: freeing invalid pointer %p to zone %s\n",
		      (void *) element, zone->zone_name);

	if (FUNC1(old_head == element))
		FUNC11("zfree: double free of %p to zone %s\n",
		      (void *) element, zone->zone_name);
	/*
	 * Always write a redundant next pointer
	 * So that it is more difficult to forge, xor it with a random cookie
	 * A poisoned element is indicated by using zp_poisoned_cookie
	 * instead of zp_nopoison_cookie
	 */

	*backup = old_head ^ (poison ? zp_poisoned_cookie : zp_nopoison_cookie);

	/* 
	 * Insert this element at the head of the free list. We also xor the 
	 * primary pointer with the zp_nopoison_cookie to make sure a free 
	 * element does not provide the location of the next free element directly.
	 */
	*primary             = old_head ^ zp_nopoison_cookie;
	FUNC10(page_meta, (struct zone_free_element *)element);
	page_meta->free_count++;
	if (zone->allows_foreign && !FUNC3(element, zone->elem_size)) {
		if (page_meta->free_count == 1) {
			/* first foreign element freed on page, move from all_used */
			FUNC12(&zone->pages.any_free_foreign, &(page_meta->pages));
		} else {
			/* no other list transitions */
		}
	} else if (page_meta->free_count == FUNC5(page_meta)) {
		/* whether the page was on the intermediate or all_used, queue, move it to free */
		FUNC12(&zone->pages.all_free, &(page_meta->pages));
		zone->count_all_free_pages += page_meta->page_count;
	} else if (page_meta->free_count == 1) {
		/* first free element on page, move from all_used */
		FUNC12(&zone->pages.intermediate, &(page_meta->pages));
	}
	zone->count--;
	zone->countfree++;

#if KASAN_ZALLOC
	kasan_poison_range(element, zone->elem_size, ASAN_HEAP_FREED);
#endif
}