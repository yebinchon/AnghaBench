#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* kauth_cred_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_10__ {int /*<<< orphan*/  p_comm; } ;
struct TYPE_9__ {int /*<<< orphan*/  cr_ref; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* NOCRED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int,long*) ; 
 TYPE_6__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static boolean_t
FUNC8(kauth_cred_t *credp)
{
	int		old_value;
	boolean_t	destroy_it = FALSE;

	FUNC0();
	FUNC1(*credp);

	old_value = FUNC2(-1, (long*)&(*credp)->cr_ref);

#if DIAGNOSTIC
	if (old_value == 0)
		panic("%s:0x%08x kauth_cred_unref_hashlocked: dropping a reference on a cred with no references", current_proc()->p_comm, *credp);
	if (old_value == 1)
		panic("%s:0x%08x kauth_cred_unref_hashlocked: dropping a reference on a cred with no hash entry", current_proc()->p_comm, *credp);
#endif

#if 0 // use this to watch a specific credential
	if ( is_target_cred( *credp ) != 0 ) {
		get_backtrace( );
	}
#endif

	/*
	 * If the old_value is 2, then we have just released the last external
	 * reference to this credential
	 */
	if (old_value < 3) {
		/* The last absolute reference is our credential hash table */
		destroy_it = FUNC6(*credp);
	}

	if (destroy_it == FALSE) {
		*credp = NOCRED;
	}

	return (destroy_it);
}