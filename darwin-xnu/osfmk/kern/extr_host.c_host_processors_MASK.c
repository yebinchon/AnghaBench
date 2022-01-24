#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  TYPE_1__* processor_t ;
typedef  scalar_t__ processor_array_t ;
typedef  scalar_t__ mach_port_t ;
typedef  unsigned int mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/ * host_priv_t ;
struct TYPE_4__ {struct TYPE_4__* processor_list; } ;

/* Variables and functions */
 int /*<<< orphan*/ * HOST_PRIV_NULL ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int processor_count ; 
 TYPE_1__* processor_list ; 
 int /*<<< orphan*/  processor_list_lock ; 
 int /*<<< orphan*/  realhost ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

kern_return_t
FUNC5(host_priv_t host_priv, processor_array_t * out_array, mach_msg_type_number_t * countp)
{
	processor_t processor, *tp;
	void * addr;
	unsigned int count, i;

	if (host_priv == HOST_PRIV_NULL)
		return (KERN_INVALID_ARGUMENT);

	FUNC0(host_priv == &realhost);

	count = processor_count;
	FUNC0(count != 0);

	addr = FUNC2((vm_size_t)(count * sizeof(mach_port_t)));
	if (addr == 0)
		return (KERN_RESOURCE_SHORTAGE);

	tp = (processor_t *)addr;
	*tp++ = processor = processor_list;

	if (count > 1) {
		FUNC3(&processor_list_lock);

		for (i = 1; i < count; i++)
			*tp++ = processor = processor->processor_list;

		FUNC4(&processor_list_lock);
	}

	*countp = count;
	*out_array = (processor_array_t)addr;

	/* do the conversion that Mig should handle */
	tp = (processor_t *)addr;
	for (i = 0; i < count; i++)
		((mach_port_t *)tp)[i] = (mach_port_t)FUNC1(tp[i]);

	return (KERN_SUCCESS);
}