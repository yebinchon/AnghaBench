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
struct vnop_read_args {TYPE_1__* a_vp; } ;
struct TYPE_2__ {scalar_t__ v_type; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ VCHR ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int
FUNC2(struct vnop_read_args *ap)
{

	if (FUNC0(ap->a_vp))
		FUNC1("dead_read: lock");
	/*
	 * Return EOF for character devices, EIO for others
	 */
	if (ap->a_vp->v_type != VCHR)
		return (EIO);
	return (0);
}