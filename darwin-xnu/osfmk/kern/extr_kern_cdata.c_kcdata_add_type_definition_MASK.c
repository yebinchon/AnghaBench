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
typedef  int uint32_t ;
struct kcdata_type_definition {int kct_num_elements; int kct_type_identifier; int /*<<< orphan*/ * kct_name; } ;
struct kcdata_subtype_descriptor {int dummy; } ;
typedef  int mach_vm_address_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  kcdata_descriptor_t ;
typedef  int /*<<< orphan*/  kc_type_definition ;

/* Variables and functions */
 scalar_t__ KCDATA_DESC_MAXLEN ; 
 int /*<<< orphan*/  KCDATA_TYPE_TYPEDEFINTION ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct kcdata_type_definition*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (char*) ; 

kern_return_t FUNC6(
		kcdata_descriptor_t data,
		uint32_t type_id,
		char *type_name,
		struct kcdata_subtype_descriptor *elements_array_addr,
		uint32_t elements_count)
{
	kern_return_t kr = KERN_SUCCESS;
	struct kcdata_type_definition kc_type_definition;
	mach_vm_address_t user_addr;
	uint32_t total_size = sizeof(struct kcdata_type_definition);
	FUNC0(&kc_type_definition, sizeof(kc_type_definition));

	if (FUNC5(type_name) >= KCDATA_DESC_MAXLEN)
		return KERN_INVALID_ARGUMENT;
	FUNC4(&kc_type_definition.kct_name[0], type_name, KCDATA_DESC_MAXLEN);
	kc_type_definition.kct_num_elements = elements_count;
	kc_type_definition.kct_type_identifier = type_id;

	total_size += elements_count * sizeof(struct kcdata_subtype_descriptor);
	/* record number of padding bytes as lower 4 bits of flags */
	if (KERN_SUCCESS != (kr = FUNC2(data, KCDATA_TYPE_TYPEDEFINTION, total_size,
	                                                             FUNC1(total_size), &user_addr)))
		return kr;
	if (KERN_SUCCESS != (kr = FUNC3(data, user_addr, (void *)&kc_type_definition, sizeof(struct kcdata_type_definition))))
		return kr;
	user_addr += sizeof(struct kcdata_type_definition);
	if (KERN_SUCCESS != (kr = FUNC3(data, user_addr, (void *)elements_array_addr, elements_count * sizeof(struct kcdata_subtype_descriptor))))
		return kr;
	return kr;
}