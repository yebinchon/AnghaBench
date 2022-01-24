#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
struct label {int dummy; } ;
typedef  scalar_t__ mach_vm_offset_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/ * kcdata_descriptor_t ;
struct TYPE_6__ {int /*<<< orphan*/ * corpse_info; struct label* crash_label; int /*<<< orphan*/ * bsd_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORPSEINFO_ALLOCATION_SIZE ; 
 int /*<<< orphan*/  CORPSE_CRASHINFO_HAS_REF ; 
 int /*<<< orphan*/  KCFLAG_USE_MEMCOPY ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_NOT_SUPPORTED ; 
 int /*<<< orphan*/  KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 struct label* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct label*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct label*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

kern_return_t
FUNC13(
	task_t task,
#ifdef CONFIG_MACF
	struct label *crash_label,
#endif
	int is_corpse_fork)
{
	kern_return_t kr = KERN_SUCCESS;

	kcdata_descriptor_t crash_data = NULL;
	kcdata_descriptor_t crash_data_release = NULL;
	mach_msg_type_number_t size = CORPSEINFO_ALLOCATION_SIZE;
	mach_vm_offset_t crash_data_ptr = 0;
	void *crash_data_kernel = NULL;
	void *crash_data_kernel_release = NULL;
#if CONFIG_MACF
	struct label *label, *free_label;
#endif

	if (!FUNC2()) {
		return KERN_NOT_SUPPORTED;
	}

#if CONFIG_MACF
	free_label = label = mac_exc_create_label();
#endif
	
	FUNC11(task);

	FUNC0(is_corpse_fork || task->bsd_info != NULL);
	if (task->corpse_info == NULL && (is_corpse_fork || task->bsd_info != NULL)) {
#if CONFIG_MACF
		/* Set the crash label, used by the exception delivery mac hook */
		free_label = task->crash_label; // Most likely NULL.
		task->crash_label = label;
		mac_exc_update_task_crash_label(task, crash_label);
#endif
		FUNC12(task);

		crash_data_kernel = (void *) FUNC3(CORPSEINFO_ALLOCATION_SIZE);
		if (crash_data_kernel == NULL) {
			kr = KERN_RESOURCE_SHORTAGE;
			goto out_no_lock;
		}
		FUNC1(crash_data_kernel, CORPSEINFO_ALLOCATION_SIZE);
		crash_data_ptr = (mach_vm_offset_t) crash_data_kernel;

		/* Do not get a corpse ref for corpse fork */
		crash_data = FUNC9((mach_vm_address_t)crash_data_ptr, size,
				is_corpse_fork ? 0 : CORPSE_CRASHINFO_HAS_REF,
				KCFLAG_USE_MEMCOPY);
		if (crash_data) {
			FUNC11(task);
			crash_data_release = task->corpse_info;
			crash_data_kernel_release = FUNC4(crash_data_release);
			task->corpse_info = crash_data;

			FUNC12(task);
			kr = KERN_SUCCESS;
		} else {
			FUNC5(crash_data_kernel, CORPSEINFO_ALLOCATION_SIZE);
			kr = KERN_FAILURE;
		}

		if (crash_data_release != NULL) {
			FUNC10(crash_data_release);
		}
		if (crash_data_kernel_release != NULL) {
			FUNC5(crash_data_kernel_release, CORPSEINFO_ALLOCATION_SIZE);
		}
	} else {
		FUNC12(task);
	}

out_no_lock:
#if CONFIG_MACF
	if (free_label != NULL) {
		mac_exc_free_label(free_label);
	}
#endif
	return kr;
}