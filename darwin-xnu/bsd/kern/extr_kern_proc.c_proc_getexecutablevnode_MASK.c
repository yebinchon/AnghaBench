#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vnode_t ;
typedef  TYPE_1__* proc_t ;
struct TYPE_3__ {scalar_t__ p_textvp; } ;

/* Variables and functions */
 scalar_t__ NULLVP ; 
 scalar_t__ FUNC0 (scalar_t__) ; 

vnode_t
FUNC1(proc_t p)
{
	vnode_t tvp  = p->p_textvp;

	if ( tvp != NULLVP) {
		if (FUNC0(tvp) == 0) {
			return tvp;
		}
	}

	return NULLVP;
}