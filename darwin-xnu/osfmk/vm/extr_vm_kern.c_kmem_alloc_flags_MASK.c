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
typedef  int /*<<< orphan*/  vm_tag_t ;
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KMEM_ALLOC_CODE ; 
 int /*<<< orphan*/  KMEM_ALLOC_CODE_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC2(
	vm_map_t	map,
	vm_offset_t	*addrp,
	vm_size_t	size,
	vm_tag_t 	tag,
	int 		flags)
{
	kern_return_t kr = FUNC1(map, addrp, size, 0, flags, tag);
	FUNC0(KMEM_ALLOC_CODE, KMEM_ALLOC_CODE_2, size, *addrp);
	return kr;
}