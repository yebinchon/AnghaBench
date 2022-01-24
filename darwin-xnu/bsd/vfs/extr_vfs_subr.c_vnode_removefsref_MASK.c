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
 int VNAMED_FSHASH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(vnode_t vp)
{
	FUNC1(vp);
	if ((vp->v_lflag & VNAMED_FSHASH) == 0)
		FUNC0("remove_fsref: no named reference");
	vp->v_lflag &= ~VNAMED_FSHASH;
	FUNC2(vp);
	return(0);

}