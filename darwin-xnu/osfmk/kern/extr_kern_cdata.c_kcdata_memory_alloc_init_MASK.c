#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct kcdata_descriptor {int dummy; } ;
typedef  void* mach_vm_address_t ;
typedef  TYPE_1__* kcdata_descriptor_t ;
struct TYPE_7__ {unsigned int kcd_flags; unsigned int kcd_length; void* kcd_addr_end; void* kcd_addr_begin; } ;

/* Variables and functions */
 unsigned int KCFLAG_USE_COPYOUT ; 
 unsigned int KCFLAG_USE_MEMCOPY ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

kcdata_descriptor_t FUNC4(mach_vm_address_t buffer_addr_p, unsigned data_type, unsigned size, unsigned flags)
{
	kcdata_descriptor_t data = NULL;
	mach_vm_address_t user_addr = 0;

	data = FUNC1(sizeof(struct kcdata_descriptor));
	if (data == NULL) {
		return NULL;
	}
	FUNC0(data, sizeof(struct kcdata_descriptor));
	data->kcd_addr_begin = buffer_addr_p;
	data->kcd_addr_end = buffer_addr_p;
	data->kcd_flags = (flags & KCFLAG_USE_COPYOUT)? KCFLAG_USE_COPYOUT : KCFLAG_USE_MEMCOPY;
	data->kcd_length = size;

	/* Initialize the BEGIN header */
	if (KERN_SUCCESS != FUNC2(data, data_type, 0, &user_addr)){
		FUNC3(data);
		return NULL;
	}

	return data;
}