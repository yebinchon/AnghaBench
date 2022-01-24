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
struct vm_map_header {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vm_map_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_map_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_map_header*) ; 

void
FUNC3( struct vm_map_header *hdr )
{
	FUNC1( hdr );
#ifdef VM_MAP_STORE_USE_RB
	if (vm_map_store_has_RB_support( hdr )) {
		vm_map_store_init_rb( hdr );
	}
#endif
}