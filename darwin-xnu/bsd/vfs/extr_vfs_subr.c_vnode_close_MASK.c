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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/ * vfs_context_t ;
typedef  int errno_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

errno_t
FUNC3(vnode_t vp, int flags, vfs_context_t ctx)
{
	int error;

	if (ctx == NULL) {
		ctx = FUNC0();
	}
	
	error = FUNC1(vp, flags, ctx);
	FUNC2(vp);
	return (error);
}