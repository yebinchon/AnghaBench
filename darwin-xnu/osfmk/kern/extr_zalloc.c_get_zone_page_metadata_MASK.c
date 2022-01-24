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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct zone_page_metadata {int dummy; } ;
struct zone_free_element {int dummy; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ MULTIPAGE_METADATA_MAGIC ; 
 scalar_t__ FUNC0 (struct zone_free_element*) ; 
 scalar_t__ FUNC1 (struct zone_page_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (struct zone_free_element*,int) ; 
 struct zone_page_metadata* FUNC4 (struct zone_page_metadata*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zone_page_metadata*) ; 

__attribute__((used)) static inline struct zone_page_metadata *
FUNC7(struct zone_free_element *element, boolean_t init)
{
	struct zone_page_metadata *page_meta = 0;

	if (FUNC3(element, sizeof(struct zone_free_element))) {	
		page_meta = (struct zone_page_metadata *)(FUNC0(element));
		if (init)
			FUNC6(page_meta);
	} else {
		page_meta = (struct zone_page_metadata *)(FUNC5((vm_offset_t)element));
	}
	if (init) {
		FUNC2((char *)page_meta, sizeof(struct zone_page_metadata));
	}
	return ((FUNC1(page_meta) != MULTIPAGE_METADATA_MAGIC) ? page_meta : FUNC4(page_meta));
}