#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vfs_context_t ;
typedef  TYPE_2__* uthread_t ;
struct TYPE_5__ {int /*<<< orphan*/ * vc_ucred; } ;
struct TYPE_6__ {TYPE_1__ uu_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 

vfs_context_t
FUNC3(void)
{
	vfs_context_t ctx = NULL;
	volatile uthread_t ut = (uthread_t)FUNC1(FUNC0());

	if (ut != NULL ) {
		if (ut->uu_context.vc_ucred != NULL) {
			ctx = &ut->uu_context;
		}
	}

	return(ctx == NULL ? FUNC2() : ctx);
}