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
typedef  TYPE_1__* kauth_cred_t ;
struct TYPE_5__ {int /*<<< orphan*/  cr_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,long*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(kauth_cred_t cred)
{
	int		old_value;
	
	FUNC0(cred);

	old_value = FUNC1(1, (long*)&cred->cr_ref);

	if (old_value < 1)
		FUNC4("kauth_cred_ref: trying to take a reference on a cred with no references");

#if 0 // use this to watch a specific credential
	if ( is_target_cred( cred ) != 0 ) {
 		get_backtrace( );
	}
#endif
		
	return;
}