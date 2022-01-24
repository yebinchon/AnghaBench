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
typedef  int /*<<< orphan*/  thread_call_param_t ;
typedef  int /*<<< orphan*/  thread_call_func_t ;
struct _throttle_io_info_t {int throttle_next_wake_level; scalar_t__ throttle_is_fusion_with_priority; scalar_t__ throttle_disabled; scalar_t__* throttle_inflight_count; scalar_t__* throttle_last_IO_pid; int /*<<< orphan*/ * throttle_uthlist; int /*<<< orphan*/  throttle_timer_call; int /*<<< orphan*/  throttle_lock; } ;
typedef  int /*<<< orphan*/  iosched ;

/* Variables and functions */
 int LOWPRI_MAX_NUM_DEV ; 
 scalar_t__ FUNC0 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int THROTTLE_LEVEL_END ; 
 struct _throttle_io_info_t* _throttle_io_info ; 
 int iosched_enabled ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  throttle_lock_attr ; 
 int /*<<< orphan*/  throttle_lock_grp ; 
 int /*<<< orphan*/  throttle_lock_grp_attr ; 
 scalar_t__ throttle_timer ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(void)
{
        struct _throttle_io_info_t *info;
        int	i;
	int	level;
#if CONFIG_IOSCHED
	int 	iosched;
#endif
	/*                                                                                                                                    
         * allocate lock group attribute and group                                                                                            
         */
        throttle_lock_grp_attr = FUNC4();
        throttle_lock_grp = FUNC3("throttle I/O", throttle_lock_grp_attr);

	/* Update throttle parameters based on device tree configuration */
	FUNC7();

        /*                                                                                                                                    
         * allocate the lock attribute                                                                                                        
         */
        throttle_lock_attr = FUNC2();

	for (i = 0; i < LOWPRI_MAX_NUM_DEV; i++) {
	        info = &_throttle_io_info[i];
	  
	        FUNC5(&info->throttle_lock, throttle_lock_grp, throttle_lock_attr);
		info->throttle_timer_call = FUNC6((thread_call_func_t)throttle_timer, (thread_call_param_t)info);

		for (level = 0; level <= THROTTLE_LEVEL_END; level++) {
			FUNC1(&info->throttle_uthlist[level]);
			info->throttle_last_IO_pid[level] = 0;
			info->throttle_inflight_count[level] = 0;
		}
		info->throttle_next_wake_level = THROTTLE_LEVEL_END;
		info->throttle_disabled = 0;
		info->throttle_is_fusion_with_priority = 0;
	}
#if CONFIG_IOSCHED
	if (PE_parse_boot_argn("iosched", &iosched, sizeof(iosched))) {
		iosched_enabled = iosched;
	}
	if (iosched_enabled) {
		/* Initialize I/O Reprioritization mechanism */
		vm_io_reprioritize_init();
	}
#endif
}