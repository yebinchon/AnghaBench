#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  proc_name ;
typedef  int /*<<< orphan*/  cbsd_info ;
struct TYPE_4__ {int /*<<< orphan*/  task; } ;
struct TYPE_3__ {int /*<<< orphan*/  bsd_info; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (void*) ; 

__attribute__((used)) static void
FUNC4(void) {
	/* because of scoping issues len(p_comm) from proc_t is hard coded here */
	char proc_name[17] = "Unknown";
	task_t ctask = 0;
	void *cbsd_info = 0;

	if (FUNC1((vm_offset_t)&FUNC0()->task, (vm_offset_t) &ctask, sizeof(task_t)) == sizeof(task_t))
		if(FUNC1((vm_offset_t)&ctask->bsd_info, (vm_offset_t)&cbsd_info, sizeof(cbsd_info)) == sizeof(cbsd_info))
			if (cbsd_info && (FUNC1((vm_offset_t) FUNC3(cbsd_info), (vm_offset_t) &proc_name, sizeof(proc_name)) > 0))
				proc_name[sizeof(proc_name) - 1] = '\0';
	FUNC2("\nBSD process name corresponding to current thread: %s\n", proc_name);
}