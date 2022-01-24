#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* zone_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ vm_address_t ;
struct zone_page_metadata {int /*<<< orphan*/  pages; } ;
struct zone_free_element {struct zone_free_element* next; } ;
struct TYPE_5__ {int /*<<< orphan*/  intermediate; int /*<<< orphan*/  all_free; int /*<<< orphan*/  any_free_foreign; } ;
struct TYPE_6__ {TYPE_1__ pages; scalar_t__ allows_foreign; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 struct zone_free_element* FUNC1 (struct zone_page_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(zone_t zone, vm_offset_t elem)
{
	struct zone_free_element *this;
	struct zone_page_metadata *thispage;

	if (zone->allows_foreign) {
		for (thispage = (struct zone_page_metadata *)FUNC4(&zone->pages.any_free_foreign);
			 !FUNC3(&zone->pages.any_free_foreign, &(thispage->pages));
			 thispage = (struct zone_page_metadata *)FUNC5(&(thispage->pages))) {
			for (this = FUNC1(thispage);
				 this != NULL;
				 this = this->next) {
				if (!FUNC0(zone, (vm_address_t)this) || (vm_address_t)this == elem)
					FUNC2("zone_check_freelist");
			}
		}
	}
	for (thispage = (struct zone_page_metadata *)FUNC4(&zone->pages.all_free);
		!FUNC3(&zone->pages.all_free, &(thispage->pages));
		thispage = (struct zone_page_metadata *)FUNC5(&(thispage->pages))) {
		for (this = FUNC1(thispage);
			this != NULL;
			this = this->next) {
			if (!FUNC0(zone, (vm_address_t)this) || (vm_address_t)this == elem)
				FUNC2("zone_check_freelist");
		}
	}
	for (thispage = (struct zone_page_metadata *)FUNC4(&zone->pages.intermediate);
		!FUNC3(&zone->pages.intermediate, &(thispage->pages));
		thispage = (struct zone_page_metadata *)FUNC5(&(thispage->pages))) {
		for (this = FUNC1(thispage);
			this != NULL;
			this = this->next) {
			if (!FUNC0(zone, (vm_address_t)this) || (vm_address_t)this == elem)
				FUNC2("zone_check_freelist");
		}
	}
}