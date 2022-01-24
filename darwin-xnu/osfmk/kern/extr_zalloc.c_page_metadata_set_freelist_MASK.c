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
typedef  scalar_t__ vm_offset_t ;
typedef  void* uint32_t ;
struct zone_page_metadata {void* freelist_offset; } ;
typedef  scalar_t__ addr ;

/* Variables and functions */
 scalar_t__ MULTIPAGE_METADATA_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zone_page_metadata*) ; 
 void* PAGE_METADATA_EMPTY_FREELIST ; 
 scalar_t__ FUNC2 (struct zone_page_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct zone_page_metadata*,int) ; 

__attribute__((used)) static inline void
FUNC5(struct zone_page_metadata *page_meta, void *addr)
{
	FUNC3(FUNC2(page_meta) != MULTIPAGE_METADATA_MAGIC);
	if (addr == NULL)
		page_meta->freelist_offset = PAGE_METADATA_EMPTY_FREELIST;
	else {
		if (FUNC4(page_meta, sizeof(struct zone_page_metadata)))
			page_meta->freelist_offset = (uint32_t)((vm_offset_t)(addr) - FUNC0(FUNC1(page_meta)));
		else
			page_meta->freelist_offset = (uint32_t)((vm_offset_t)(addr) - (vm_offset_t)page_meta);
	}
}