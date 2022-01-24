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
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  int /*<<< orphan*/  vm_map_size_t ;
typedef  int /*<<< orphan*/  vm_map_copy_t ;
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_INHERIT_DEFAULT ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int /*<<< orphan*/  VM_PROT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC1(
	vm_map_t		dst_map,
	vm_map_address_t	*dst_addr,	/* OUT */
	vm_map_copy_t		copy,
	vm_map_size_t		copy_size)
{
	return FUNC0(dst_map, dst_addr, copy, copy_size,
	                               TRUE, /* consume_on_success */
	                               VM_PROT_DEFAULT,
	                               VM_PROT_ALL,
	                               VM_INHERIT_DEFAULT);
}