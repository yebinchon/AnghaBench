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
struct vnode {struct fifoinfo* v_fifoinfo; } ;
struct fifoinfo {int /*<<< orphan*/  fi_writers; int /*<<< orphan*/  fi_readers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(struct vnode *vp)
{
	struct fifoinfo *fip = vp->v_fifoinfo;

	FUNC0(", fifo with %ld readers and %ld writers",
		fip->fi_readers, fip->fi_writers);
}