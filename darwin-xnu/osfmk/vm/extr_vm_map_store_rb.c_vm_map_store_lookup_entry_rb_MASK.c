#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct vm_map_store {int dummy; } ;
struct vm_map_header {int /*<<< orphan*/  rb_head_store; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_10__ {scalar_t__ vme_start; scalar_t__ vme_end; } ;
struct TYPE_9__ {struct vm_map_header hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 struct vm_map_store* FUNC0 (struct vm_map_store*,int /*<<< orphan*/ ) ; 
 struct vm_map_store* FUNC1 (struct vm_map_store*,int /*<<< orphan*/ ) ; 
 struct vm_map_store* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC3 (struct vm_map_store*) ; 
 TYPE_2__* VM_MAP_ENTRY_NULL ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 

boolean_t FUNC6( vm_map_t map, vm_map_offset_t address, vm_map_entry_t *vm_entry)
{
	struct vm_map_header hdr = map->hdr;
	struct vm_map_store *rb_entry = FUNC2(&(hdr.rb_head_store));
	vm_map_entry_t cur = FUNC5(map);
	vm_map_entry_t prev = VM_MAP_ENTRY_NULL;

	while (rb_entry != (struct vm_map_store*)NULL) {
       		cur =  FUNC3(rb_entry);
		if(cur == VM_MAP_ENTRY_NULL)
			FUNC4("no entry");
		if (address >= cur->vme_start) {
			if (address < cur->vme_end) {
				*vm_entry = cur;
				return TRUE;
			}
			rb_entry = FUNC1(rb_entry, entry);
			prev = cur;
		} else {
			rb_entry = FUNC0(rb_entry, entry);
		}
	}
	if( prev == VM_MAP_ENTRY_NULL){
		prev = FUNC5(map);
	}
	*vm_entry = prev;
	return FALSE;
}