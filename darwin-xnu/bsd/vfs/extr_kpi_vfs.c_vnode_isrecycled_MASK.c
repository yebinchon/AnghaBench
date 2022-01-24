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
struct TYPE_5__ {int v_lflag; } ;

/* Variables and functions */
 int VL_DEAD ; 
 int VL_TERMINATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int 
FUNC2(vnode_t vp)
{
	int ret;

	FUNC0(vp);
	ret =  (vp->v_lflag & (VL_TERMINATE|VL_DEAD))? 1 : 0;
	FUNC1(vp);
	return(ret);
}