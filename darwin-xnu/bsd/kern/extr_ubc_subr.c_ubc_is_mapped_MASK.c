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
typedef  scalar_t__ boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  ui_flags; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct vnode const*) ; 
 int /*<<< orphan*/  UI_ISMAPPED ; 
 int /*<<< orphan*/  UI_MAPPEDWRITE ; 

boolean_t FUNC2(const struct vnode *vp, boolean_t *writable)
{
	if (!FUNC1(vp) || !FUNC0(vp->v_ubcinfo->ui_flags, UI_ISMAPPED))
		return FALSE;
	if (writable)
		*writable = FUNC0(vp->v_ubcinfo->ui_flags, UI_MAPPEDWRITE);
	return TRUE;
}