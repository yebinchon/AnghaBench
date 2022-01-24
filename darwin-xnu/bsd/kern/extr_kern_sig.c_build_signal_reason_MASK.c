#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* proc_t ;
typedef  TYPE_2__* os_reason_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
struct TYPE_9__ {int /*<<< orphan*/  osr_kcd_descriptor; } ;
struct TYPE_8__ {char const* p_pid; char const* p_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  KCDATA_TYPE_PID ; 
 int /*<<< orphan*/  KCDATA_TYPE_PROCNAME ; 
 scalar_t__ KERN_SUCCESS ; 
 TYPE_2__* OS_REASON_NULL ; 
 int /*<<< orphan*/  OS_REASON_SIGNAL ; 
 TYPE_1__* FUNC0 () ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 

__attribute__((used)) static os_reason_t
FUNC9(int signum, const char *procname)
{
	os_reason_t signal_reason = OS_REASON_NULL;
	proc_t sender_proc = FUNC0();
	uint32_t reason_buffer_size_estimate = 0, proc_name_length = 0;
	const char *default_sender_procname = "unknown";
	mach_vm_address_t data_addr;
	int ret;

	signal_reason = FUNC5(OS_REASON_SIGNAL, signum);
	if (signal_reason == OS_REASON_NULL) {
		FUNC6("build_signal_reason: unable to allocate signal reason structure.\n");
		return signal_reason;
	}

	reason_buffer_size_estimate = FUNC1(2, sizeof(sender_proc->p_name) +
										sizeof(sender_proc->p_pid));

	ret = FUNC4(signal_reason, reason_buffer_size_estimate);
	if (ret != 0) {
		FUNC6("build_signal_reason: unable to allocate signal reason buffer.\n");
		return signal_reason;
	}

	if (KERN_SUCCESS == FUNC2(&signal_reason->osr_kcd_descriptor, KCDATA_TYPE_PID,
							sizeof(sender_proc->p_pid), &data_addr)) {
		FUNC3(&signal_reason->osr_kcd_descriptor, data_addr, &sender_proc->p_pid,
					sizeof(sender_proc->p_pid));
	} else {
		FUNC6("build_signal_reason: exceeded space in signal reason buf, unable to log PID\n");
	}

	proc_name_length = sizeof(sender_proc->p_name);
	if (KERN_SUCCESS == FUNC2(&signal_reason->osr_kcd_descriptor, KCDATA_TYPE_PROCNAME,
							proc_name_length, &data_addr)) {
		if (procname) {
			char truncated_procname[proc_name_length];
			FUNC8((char *) &truncated_procname, procname, proc_name_length);
			truncated_procname[proc_name_length - 1] = '\0';

			FUNC3(&signal_reason->osr_kcd_descriptor, data_addr, truncated_procname,
					FUNC7((char *) &truncated_procname));
		} else if (*sender_proc->p_name) {
			FUNC3(&signal_reason->osr_kcd_descriptor, data_addr, &sender_proc->p_name,
					sizeof(sender_proc->p_name));
		} else {
			FUNC3(&signal_reason->osr_kcd_descriptor, data_addr, &default_sender_procname,
					FUNC7(default_sender_procname) + 1);
		}
	} else {
		FUNC6("build_signal_reason: exceeded space in signal reason buf, unable to log procname\n");
	}

	return signal_reason;
}