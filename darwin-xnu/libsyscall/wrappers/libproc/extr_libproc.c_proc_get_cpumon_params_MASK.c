#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ ppattr_cpu_attr; int ppattr_cpu_percentage; scalar_t__ ppattr_cpu_attr_interval; } ;
typedef  TYPE_1__ proc_policy_cpuusage_attr_t ;
typedef  int /*<<< orphan*/  proc_policy_attribute_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROC_POLICY_ACTION_GET ; 
 int /*<<< orphan*/  PROC_POLICY_RESOURCE_USAGE ; 
 scalar_t__ PROC_POLICY_RSRCACT_NOTIFY_EXC ; 
 int /*<<< orphan*/  PROC_POLICY_RUSAGE_CPU ; 
 int /*<<< orphan*/  PROC_POLICY_SCOPE_PROCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(pid_t pid, int *percentage, int *interval)
{
	proc_policy_cpuusage_attr_t attr;
	int ret;

	ret = FUNC0(PROC_POLICY_SCOPE_PROCESS, PROC_POLICY_ACTION_GET, PROC_POLICY_RESOURCE_USAGE,
		PROC_POLICY_RUSAGE_CPU, (proc_policy_attribute_t*)&attr, pid, 0);

	if ((ret == 0) && (attr.ppattr_cpu_attr == PROC_POLICY_RSRCACT_NOTIFY_EXC)) {
		*percentage = attr.ppattr_cpu_percentage;
		*interval = (int)attr.ppattr_cpu_attr_interval;
	} else {
		*percentage = 0;
		*interval = 0;
	}

	return (ret);
}