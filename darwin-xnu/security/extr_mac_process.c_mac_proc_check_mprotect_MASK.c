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
typedef  int /*<<< orphan*/  user_size_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mac_vm_enforce ; 
 int /*<<< orphan*/  proc_check_mprotect ; 

int
FUNC4(proc_t proc,
    user_addr_t addr, user_size_t size, int prot)
{
	kauth_cred_t cred;
	int error;

#if SECURITY_MAC_CHECK_ENFORCE
	/* 21167099 - only check if we allow write */
	if (!mac_vm_enforce)
		return 0;
#endif
	if (!FUNC3(proc))
		return (0);

	cred = FUNC1(proc);
	FUNC0(proc_check_mprotect, cred, proc, addr, size, prot);
	FUNC2(&cred);

	return (error);
}