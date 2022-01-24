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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  kcdata_descriptor_t ;

/* Variables and functions */
 int KCDATA_FLAGS_STRUCT_HAS_PADDING ; 
 int KCDATA_FLAGS_STRUCT_PADDING_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC2(kcdata_descriptor_t data, uint32_t type, uint32_t size, mach_vm_address_t * user_addr)
{
	/* record number of padding bytes as lower 4 bits of flags */
	uint64_t flags = (KCDATA_FLAGS_STRUCT_PADDING_MASK & FUNC0(size)) | KCDATA_FLAGS_STRUCT_HAS_PADDING;
	return FUNC1(data, type, size, flags, user_addr);
}