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
struct vnode {TYPE_1__* v_ubcinfo; } ;
struct TYPE_2__ {scalar_t__ cs_add_gen; } ;

/* Variables and functions */
 int ENEEDAUTH ; 
 scalar_t__ FUNC0 (struct vnode*) ; 
 scalar_t__ cs_blob_generation_count ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 

int
FUNC3(
	struct vnode	*vp)
{
	int retval = ENEEDAUTH;

	FUNC1(vp);

	if (FUNC0(vp) && vp->v_ubcinfo->cs_add_gen == cs_blob_generation_count) {
		retval = 0;
	}

	FUNC2(vp);
	return retval;
}