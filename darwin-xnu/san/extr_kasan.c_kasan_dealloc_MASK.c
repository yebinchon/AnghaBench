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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ vm_address_t ;
struct kasan_alloc_header {scalar_t__ left_rz; int /*<<< orphan*/  alloc_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct kasan_alloc_header* FUNC1 (scalar_t__) ; 

vm_address_t
FUNC2(vm_offset_t addr, vm_size_t *size)
{
	FUNC0(size && addr);
	struct kasan_alloc_header *h = FUNC1(addr);
	*size = h->alloc_size;
	return addr - h->left_rz;
}