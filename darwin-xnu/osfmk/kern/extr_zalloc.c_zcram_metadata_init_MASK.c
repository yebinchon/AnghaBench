#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
struct zone_page_metadata {scalar_t__ free_count; } ;
struct zone_free_element {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MULTIPAGE_METADATA_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct zone_page_metadata*,int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct zone_page_metadata* FUNC2 (struct zone_free_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zone_page_metadata*,struct zone_page_metadata*) ; 

__attribute__((used)) static inline void
FUNC4(vm_offset_t newmem, vm_size_t size, struct zone_page_metadata *chunk_metadata)
{
	struct zone_page_metadata *page_metadata;

	/* The first page is the real metadata for this allocation chunk. We mark the others as fake metadata */
	size -= PAGE_SIZE;
	newmem += PAGE_SIZE;

	for (; size > 0; newmem += PAGE_SIZE, size -= PAGE_SIZE) {
		page_metadata = FUNC2((struct zone_free_element *)newmem, TRUE);
		FUNC1(page_metadata != chunk_metadata);
		FUNC0(page_metadata, MULTIPAGE_METADATA_MAGIC);
		FUNC3(page_metadata, chunk_metadata);
		page_metadata->free_count = 0;
	}
	return;
}