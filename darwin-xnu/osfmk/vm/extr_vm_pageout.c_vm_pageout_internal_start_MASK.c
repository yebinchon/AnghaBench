#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  host_t ;
typedef  int /*<<< orphan*/  host_info_t ;
struct TYPE_5__ {int max_cpus; } ;
typedef  TYPE_1__ host_basic_info_data_t ;
struct TYPE_8__ {int id; int /*<<< orphan*/  scratch_buf; int /*<<< orphan*/ * current_chead; TYPE_3__* q; } ;
struct TYPE_7__ {int pgo_maxlaundry; } ;
struct TYPE_6__ {int vm_compressor_thread_count; int /*<<< orphan*/  vm_pageout_internal_iothread; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASEPRI_VM ; 
 scalar_t__ BSD_HOST ; 
 int /*<<< orphan*/  COMPRESSOR_SCRATCH_BUF_SIZE ; 
 int /*<<< orphan*/  HOST_BASIC_INFO ; 
 int /*<<< orphan*/  HOST_BASIC_INFO_COUNT ; 
 scalar_t__ KERN_SUCCESS ; 
 int MAX_COMPRESSOR_THREAD_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,int*,int) ; 
 int VM_CONFIG_COMPRESSOR_IS_PRESENT ; 
 int VM_PAGE_LAUNDRY_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__* ciq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ vm_pageout_iothread_internal ; 
 TYPE_3__ vm_pageout_queue_internal ; 
 TYPE_2__ vm_pageout_state ; 

kern_return_t
FUNC6(void)
{
	kern_return_t	result;
	int		i;
	host_basic_info_data_t hinfo;

	FUNC1 (VM_CONFIG_COMPRESSOR_IS_PRESENT);

	mach_msg_type_number_t count = HOST_BASIC_INFO_COUNT;
#define BSD_HOST 1
	FUNC2((host_t)BSD_HOST, HOST_BASIC_INFO, (host_info_t)&hinfo, &count);

	FUNC1(hinfo.max_cpus > 0);

#if CONFIG_EMBEDDED
	vm_pageout_state.vm_compressor_thread_count = 1;
#else
	if (hinfo.max_cpus > 4)
	        vm_pageout_state.vm_compressor_thread_count = 2;
	else
	        vm_pageout_state.vm_compressor_thread_count = 1;
#endif
	FUNC0("vmcomp_threads", &vm_pageout_state.vm_compressor_thread_count,
			   sizeof(vm_pageout_state.vm_compressor_thread_count));

	if (vm_pageout_state.vm_compressor_thread_count >= hinfo.max_cpus)
		vm_pageout_state.vm_compressor_thread_count = hinfo.max_cpus - 1;
	if (vm_pageout_state.vm_compressor_thread_count <= 0)
		vm_pageout_state.vm_compressor_thread_count = 1;
	else if (vm_pageout_state.vm_compressor_thread_count > MAX_COMPRESSOR_THREAD_COUNT)
		vm_pageout_state.vm_compressor_thread_count = MAX_COMPRESSOR_THREAD_COUNT;

	vm_pageout_queue_internal.pgo_maxlaundry = (vm_pageout_state.vm_compressor_thread_count * 4) * VM_PAGE_LAUNDRY_MAX;

	FUNC0("vmpgoi_maxlaundry", &vm_pageout_queue_internal.pgo_maxlaundry, sizeof(vm_pageout_queue_internal.pgo_maxlaundry));

	for (i = 0; i < vm_pageout_state.vm_compressor_thread_count; i++) {
		ciq[i].id = i;
		ciq[i].q = &vm_pageout_queue_internal;
		ciq[i].current_chead = NULL;
		ciq[i].scratch_buf = FUNC3(COMPRESSOR_SCRATCH_BUF_SIZE);

		result = FUNC4((thread_continue_t)vm_pageout_iothread_internal, (void *)&ciq[i],
						      BASEPRI_VM, &vm_pageout_state.vm_pageout_internal_iothread);

		if (result == KERN_SUCCESS)
			FUNC5(vm_pageout_state.vm_pageout_internal_iothread);
		else
			break;
	}
	return result;
}