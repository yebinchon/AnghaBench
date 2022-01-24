#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
struct TYPE_5__ {int /*<<< orphan*/  p_ucred; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int lock_trace ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(void)
{
	proc_t p = FUNC3();

	FUNC7("init", p);

	/* Set up exception-to-signal reflection */
	FUNC8();

#if CONFIG_MACF
	mac_cred_label_associate_user(p->p_ucred);
#endif

    FUNC9();

#if CONFIG_XNUPOST
	int result = bsd_list_tests();
	result = bsd_do_post();
	if (result != 0) {
		panic("bsd_do_post: Tests failed with result = 0x%08x\n", result);
	}
#endif

	FUNC1("bsd_do_post - done");

	FUNC4(p);
	lock_trace = 1;
}