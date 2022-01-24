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
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_5__ {int v_flag; } ;

/* Variables and functions */
 int VISUNION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(vnode_t vp, int locked)
{
	if (!locked)
		FUNC0(vp);
	if((vp->v_flag & VISUNION) == VISUNION) {
		vp->v_flag &= ~VISUNION;
		FUNC2((caddr_t)&vp->v_flag);
	}
	if (!locked)
		FUNC1(vp);
}