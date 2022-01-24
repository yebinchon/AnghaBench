#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vnop_ioctl_args {int /*<<< orphan*/  a_vp; } ;

/* Variables and functions */
 int EBADF ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnop_ioctl_args*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnop_ioctl ; 

int
FUNC3(struct vnop_ioctl_args *ap)
{

	if (!FUNC2(ap->a_vp))
		return (EBADF);
	return (FUNC0(ap->a_vp, FUNC1(vnop_ioctl), ap));
}