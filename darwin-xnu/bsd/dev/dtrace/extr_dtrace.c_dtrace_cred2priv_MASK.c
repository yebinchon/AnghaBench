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
typedef  scalar_t__ zoneid_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int DTRACE_PRIV_ALL ; 
 int DTRACE_PRIV_KERNEL ; 
 int DTRACE_PRIV_OWNER ; 
 int DTRACE_PRIV_PROC ; 
 int DTRACE_PRIV_USER ; 
 int DTRACE_PRIV_ZONEOWNER ; 
 int /*<<< orphan*/  PRIV_ALL ; 
 int /*<<< orphan*/  PRIV_DTRACE_KERNEL ; 
 int /*<<< orphan*/  PRIV_DTRACE_PROC ; 
 int /*<<< orphan*/  PRIV_DTRACE_USER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIV_PROC_OWNER ; 
 int /*<<< orphan*/  PRIV_PROC_ZONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void
FUNC5(cred_t *cr, uint32_t *privp, uid_t *uidp, zoneid_t *zoneidp)
{
	uint32_t priv;

	if (cr == NULL || FUNC0(cr, PRIV_ALL, B_FALSE)) {
		if (FUNC4() && !FUNC3()) {
			priv = DTRACE_PRIV_USER | DTRACE_PRIV_PROC | DTRACE_PRIV_OWNER;
		}
		else {
			priv = DTRACE_PRIV_ALL;
		}
		*uidp = 0;
		*zoneidp = 0;
	} else {
		*uidp = FUNC1(cr);
		*zoneidp = FUNC2(cr);

		priv = 0;
		if (FUNC0(cr, PRIV_DTRACE_KERNEL, B_FALSE))
			priv |= DTRACE_PRIV_KERNEL | DTRACE_PRIV_USER;
		else if (FUNC0(cr, PRIV_DTRACE_USER, B_FALSE))
			priv |= DTRACE_PRIV_USER;
		if (FUNC0(cr, PRIV_DTRACE_PROC, B_FALSE))
			priv |= DTRACE_PRIV_PROC;
		if (FUNC0(cr, PRIV_PROC_OWNER, B_FALSE))
			priv |= DTRACE_PRIV_OWNER;
		if (FUNC0(cr, PRIV_PROC_ZONE, B_FALSE))
			priv |= DTRACE_PRIV_ZONEOWNER;
	}

	*privp = priv;
}