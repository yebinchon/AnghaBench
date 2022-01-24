#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_object_t ;
typedef  scalar_t__ vm_object_offset_t ;
typedef  TYPE_3__* fourk_pager_t ;
struct TYPE_6__ {int /*<<< orphan*/  mo_control; } ;
struct TYPE_7__ {int is_ready; TYPE_2__ fourk_pgr_hdr; TYPE_1__* slots; int /*<<< orphan*/  is_mapped; } ;
struct TYPE_5__ {scalar_t__ backing_object; scalar_t__ backing_offset; } ;

/* Variables and functions */
 int FOURK_PAGER_SLOTS ; 
 scalar_t__ VM_OBJECT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void
FUNC3(
	fourk_pager_t pager)
{
	int i;

	FUNC0(pager->is_ready);
	FUNC0(!pager->is_mapped);

	for (i = 0; i < FOURK_PAGER_SLOTS; i++) {
		if (pager->slots[i].backing_object != VM_OBJECT_NULL &&
		    pager->slots[i].backing_object != (vm_object_t) -1) {
			FUNC2(pager->slots[i].backing_object);
			pager->slots[i].backing_object = (vm_object_t) -1;
			pager->slots[i].backing_offset = (vm_object_offset_t) -1;
		}
	}
	
	/* trigger the destruction of the memory object */
	FUNC1(pager->fourk_pgr_hdr.mo_control, 0);
}