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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  kcdata_descriptor_t ;

/* Variables and functions */
 scalar_t__ KCDATA_TYPE_CONTAINER_BEGIN ; 
 scalar_t__ KCDATA_TYPE_CONTAINER_END ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 

kern_return_t FUNC3(
		kcdata_descriptor_t data,
		uint32_t header_type,
		uint32_t container_type,
		uint64_t identifier)
{
	mach_vm_address_t user_addr;
	kern_return_t kr;
	FUNC0(header_type == KCDATA_TYPE_CONTAINER_END || header_type == KCDATA_TYPE_CONTAINER_BEGIN);
	uint32_t data_size = (header_type == KCDATA_TYPE_CONTAINER_BEGIN)? sizeof(uint32_t): 0;
	kr = FUNC1(data, header_type, data_size, identifier, &user_addr);
	if (kr != KERN_SUCCESS)
		return kr;

	if (data_size)
		kr = FUNC2(data, user_addr, &container_type, data_size);
	return kr;
}