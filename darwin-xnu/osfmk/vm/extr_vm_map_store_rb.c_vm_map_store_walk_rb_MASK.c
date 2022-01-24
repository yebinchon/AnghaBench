#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct vm_map_store {int dummy; } ;
struct vm_map_header {int /*<<< orphan*/  rb_head_store; } ;
struct TYPE_9__ {int /*<<< orphan*/  store; } ;
struct TYPE_8__ {struct vm_map_header hdr; } ;

/* Variables and functions */
 struct vm_map_store* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vm_map_store* FUNC1 (struct vm_map_store*,int /*<<< orphan*/ ) ; 
 struct vm_map_store* FUNC2 (struct vm_map_store*,int /*<<< orphan*/ ) ; 
 struct vm_map_store* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_map_store*) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  rb_head ; 

void FUNC6( vm_map_t map, vm_map_entry_t *wrong_vme, vm_map_entry_t *vm_entry)
{
	struct vm_map_header hdr = map->hdr;
	struct vm_map_store *rb_entry = FUNC3(&(hdr.rb_head_store));
	vm_map_entry_t cur = *vm_entry;

	rb_entry = FUNC0( rb_head, &(hdr.rb_head_store), &(cur->store));	
	if(rb_entry == NULL)
		FUNC5("NO SUCH ENTRY %p. Gave back %p", *vm_entry, *wrong_vme);
	else
		FUNC5("Cur: %p, L: %p, R: %p",  FUNC4(rb_entry),  FUNC4(FUNC1(rb_entry,entry)),  FUNC4(FUNC2(rb_entry,entry)));
}