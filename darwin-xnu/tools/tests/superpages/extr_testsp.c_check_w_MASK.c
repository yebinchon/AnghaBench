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
typedef  int mach_vm_size_t ;
typedef  scalar_t__ mach_vm_address_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  error ; 
 int /*<<< orphan*/  resume ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char** signame ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 

boolean_t
FUNC2(mach_vm_address_t addr, mach_vm_size_t size) {
	char *data = (char*)(uintptr_t)addr;
	int i, sig;

	if ((sig = FUNC0(resume)) != 0) {
		FUNC1(error, "%s when writing", signame[sig]);
		return FALSE;
	}

	for (i=0; i<size; i++)
		(data)[i] = i & 0xFF;

	return TRUE;
}