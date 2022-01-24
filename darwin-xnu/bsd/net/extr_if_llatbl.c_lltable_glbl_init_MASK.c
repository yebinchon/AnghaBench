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

/* Variables and functions */
 void* FUNC0 () ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,void*) ; 
 void* lle_lock_attr ; 
 void* lle_lock_grp ; 
 int /*<<< orphan*/  lle_lock_grp_attr ; 
 int /*<<< orphan*/  lltable_rwlock ; 
 void* lltable_rwlock_attr ; 
 void* lltable_rwlock_grp ; 
 int /*<<< orphan*/  lltable_rwlock_grp_attr ; 

void
FUNC4()
{
	lltable_rwlock_grp_attr = FUNC2();
	lltable_rwlock_grp = FUNC1("lltable_rwlock",
	    lltable_rwlock_grp_attr);
	lltable_rwlock_attr = FUNC0();
	FUNC3(lltable_rwlock, lltable_rwlock_grp,
	    lltable_rwlock_attr);

	lle_lock_grp_attr = FUNC2();
	lle_lock_grp = FUNC1("lle locks", lle_lock_grp_attr);
	lle_lock_attr = FUNC0();
}