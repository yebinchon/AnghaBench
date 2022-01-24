#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vnode {TYPE_1__* v_fifoinfo; } ;
struct socket {int /*<<< orphan*/  so_rcv; } ;
struct TYPE_2__ {struct socket* fi_readsock; } ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int) ; 

int
FUNC3(struct vnode *vp, long *count) 
{
	struct socket *rsock;
	rsock = vp->v_fifoinfo->fi_readsock;
	FUNC1(rsock, 1);
	*count = FUNC0(&rsock->so_rcv);
	FUNC2(rsock, 1);
	return 0;
}