#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
struct TYPE_6__ {int /*<<< orphan*/  v_lflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  VL_NEEDINACTIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(vnode_t vp)
{
        FUNC0(vp);

        FUNC1(vp);
	vp->v_lflag |= VL_NEEDINACTIVE;
	FUNC2(vp);
}