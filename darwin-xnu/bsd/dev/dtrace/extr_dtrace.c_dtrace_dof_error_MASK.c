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
typedef  int /*<<< orphan*/  dof_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CE_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ dtrace_err_verbose ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2(dof_hdr_t *dof, const char *str)
{
#pragma unused(dof) /* __APPLE__ */
	if (dtrace_err_verbose)
		FUNC0(CE_WARN, "failed to process DOF: %s", str);

#ifdef DTRACE_ERRDEBUG
	dtrace_errdebug(str);
#endif
}