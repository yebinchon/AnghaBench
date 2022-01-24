#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vnode_t ;
struct session {scalar_t__ s_ttyvp; int s_ttyvid; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_4__ {int p_flag; } ;

/* Variables and functions */
 scalar_t__ NULLVP ; 
 int P_CONTROLT ; 
 struct session* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct session*) ; 
 int /*<<< orphan*/  FUNC2 (struct session*) ; 
 int /*<<< orphan*/  FUNC3 (struct session*) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 

__attribute__((used)) static vnode_t
FUNC5(proc_t p)
{
	vnode_t vp;
	int vid;
	struct session *sessp;

	sessp = FUNC0(p);

	FUNC1(sessp);
	vp = (p->p_flag & P_CONTROLT ? sessp->s_ttyvp : NULLVP);
	vid = sessp->s_ttyvid;	
	FUNC3(sessp);

	FUNC2(sessp);

	if (vp != NULLVP) {
		/* cannot get an IO reference, return NULLVP */
		if (FUNC4(vp, vid) != 0)
			vp = NULLVP;
	}
	return(vp);
}