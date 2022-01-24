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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static intptr_t
FUNC4(vnode_t vp) 
{
	if (FUNC2(vp)) {
#if FIFO
		long spc;
		int err = fifo_freespace(vp, &spc);
		if (err == 0) {
			return (intptr_t)spc;
		} else 
#endif
		{
			return (intptr_t)0;
		}
	} else if (FUNC3(vp)) {
		return (intptr_t)1;
	} else {
		FUNC1("Should never have an EVFILT_READ except for reg or fifo.");
		return 0;
	}
}