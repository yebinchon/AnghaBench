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
typedef  int /*<<< orphan*/  dev_info_t ;

/* Variables and functions */
 scalar_t__ DDI_FAILURE ; 
 int /*<<< orphan*/  DDI_PSEUDO ; 
 int DDI_SUCCESS ; 
 int /*<<< orphan*/  DTRACE_PRIV_KERNEL ; 
 int /*<<< orphan*/  S_IFCHR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dtrace_probe ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lockstat_attr ; 
 int /*<<< orphan*/  lockstat_id ; 
 int /*<<< orphan*/  lockstat_pops ; 
 int /*<<< orphan*/  lockstat_probe ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(dev_info_t *devi)
{
	if (FUNC0(devi, "lockstat", S_IFCHR, 0,
	    DDI_PSEUDO, 0) == DDI_FAILURE ||
	    FUNC2("lockstat", &lockstat_attr, DTRACE_PRIV_KERNEL,
	    NULL, &lockstat_pops, NULL, &lockstat_id) != 0) {
		FUNC1(devi, NULL);
		return (DDI_FAILURE);
	}

	lockstat_probe = dtrace_probe;
	FUNC3();

	return (DDI_SUCCESS);
}