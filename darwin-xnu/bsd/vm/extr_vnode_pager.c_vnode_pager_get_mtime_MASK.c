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
struct vnode {int dummy; } ;
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,struct timespec*,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC3(
	struct vnode	*vp,
	struct timespec	*current_mtime,
	struct timespec	*cs_mtime)
{
	FUNC2(vp, current_mtime, FUNC1());
	if (cs_mtime != NULL) {
		FUNC0(vp, cs_mtime);
	}
	return KERN_SUCCESS;
}