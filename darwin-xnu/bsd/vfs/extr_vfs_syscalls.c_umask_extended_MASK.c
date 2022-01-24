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
struct umask_extended_args {scalar_t__ xsecurity; int /*<<< orphan*/  newmask; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  scalar_t__ kauth_filesec_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ KAUTH_FILESEC_NONE ; 
 scalar_t__ USER_ADDR_NULL ; 
 int FUNC0 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

int
FUNC3(proc_t p, struct umask_extended_args *uap, int32_t *retval)
{
	int ciferror;
	kauth_filesec_t xsecdst;

	xsecdst = KAUTH_FILESEC_NONE;
	if (uap->xsecurity != USER_ADDR_NULL) {
		if ((ciferror = FUNC0(uap->xsecurity, &xsecdst)) != 0)
			return ciferror;
	} else {
		xsecdst = KAUTH_FILESEC_NONE;
	}

	ciferror = FUNC2(p, uap->newmask, xsecdst, retval);

	if (xsecdst != KAUTH_FILESEC_NONE)
		FUNC1(xsecdst);
	return ciferror;
}