#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_probedesc_t ;
struct TYPE_3__ {void* stsy_return; void* stsy_entry; int /*<<< orphan*/ * stsy_underlying; } ;

/* Variables and functions */
 void* DTRACE_IDNONE ; 
 unsigned int NSYSCALL ; 
 int /*<<< orphan*/  SYSTRACE_ARTIFICIAL_FRAMES ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * syscallnames ; 
 int /*<<< orphan*/  sysent ; 
 int /*<<< orphan*/  systrace_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 TYPE_1__* systrace_sysent ; 

__attribute__((used)) static void
FUNC5(void *arg, const dtrace_probedesc_t *desc)
{
#pragma unused(arg) /* __APPLE__ */
	unsigned int i;

	if (desc != NULL)
		return;

	FUNC4(sysent, &systrace_sysent);

	for (i = 0; i < NSYSCALL; i++) {
		if (systrace_sysent[i].stsy_underlying == NULL)
			continue;

		if (FUNC3(systrace_id, NULL,
		    syscallnames[i], "entry") != 0)
			continue;

		(void) FUNC2(systrace_id, NULL, syscallnames[i],
		    "entry", SYSTRACE_ARTIFICIAL_FRAMES,
		    (void *)((uintptr_t)FUNC0(i)));
		(void) FUNC2(systrace_id, NULL, syscallnames[i],
		    "return", SYSTRACE_ARTIFICIAL_FRAMES,
		    (void *)((uintptr_t)FUNC1(i)));

		systrace_sysent[i].stsy_entry = DTRACE_IDNONE;
		systrace_sysent[i].stsy_return = DTRACE_IDNONE;
	}
}