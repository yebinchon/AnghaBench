#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* kauth_cred_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_8__ {scalar_t__ cr_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  M_CRED ; 
 TYPE_1__* NOCRED ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(kauth_cred_t *credp)
{
	boolean_t destroy_it;

	FUNC2();
	destroy_it = FUNC5(credp);
	FUNC3();

	if (destroy_it == TRUE) {
		FUNC4(*credp != NOCRED);
#if CONFIG_MACF
		mac_cred_label_destroy(*credp);
#endif
		FUNC0(*credp);

		(*credp)->cr_ref = 0;
		FUNC1(*credp, sizeof(*(*credp)), M_CRED);
		*credp = NOCRED;
	}
}