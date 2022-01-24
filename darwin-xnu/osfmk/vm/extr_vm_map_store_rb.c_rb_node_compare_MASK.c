#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_entry_t ;
struct vm_map_store {int dummy; } ;
struct TYPE_3__ {scalar_t__ vme_start; scalar_t__ vme_end; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct vm_map_store*) ; 

int FUNC1(struct vm_map_store *node, struct vm_map_store *parent)
{
	vm_map_entry_t vme_c;
	vm_map_entry_t vme_p;

	vme_c = FUNC0(node);
	vme_p =  FUNC0(parent);
	if (vme_c->vme_start < vme_p->vme_start)
		return -1;
	if (vme_c->vme_start >= vme_p->vme_end)
		return 1;
	return 0;
}