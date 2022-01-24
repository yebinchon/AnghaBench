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
typedef  scalar_t__ vnode_t ;
struct image_params {scalar_t__ ip_vp; scalar_t__ ip_arch_offset; } ;
typedef  TYPE_1__* proc_t ;
typedef  scalar_t__ off_t ;
struct TYPE_5__ {scalar_t__ p_textvp; scalar_t__ p_textoff; } ;

/* Variables and functions */
 scalar_t__ NULLVP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7(proc_t p, struct image_params *imgp)
{
	vnode_t vp;
	off_t offset;
	vnode_t tvp  = p->p_textvp;
	int ret;

	vp = imgp->ip_vp;
	offset = imgp->ip_arch_offset;

	if (vp == NULLVP)
		FUNC0("exec_resettextvp: expected valid vp");

	ret = FUNC5(vp);
	FUNC1(p);
	if (ret == 0) {
		p->p_textvp = vp;
		p->p_textoff = offset;
	} else {
		p->p_textvp = NULLVP;	/* this is paranoia */
		p->p_textoff = 0;
	}
	FUNC2(p);

	if ( tvp != NULLVP) {
		if (FUNC3(tvp) == 0) {
			FUNC6(tvp);
			FUNC4(tvp);
		}
	}	

}