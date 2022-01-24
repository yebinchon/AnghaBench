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
typedef  int /*<<< orphan*/  u_int32_t ;
struct socket {int /*<<< orphan*/  so_rcv; } ;
typedef  int /*<<< orphan*/  kern_ctl_ref ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct socket* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int) ; 

errno_t
FUNC3(kern_ctl_ref kctlref, u_int32_t unit, size_t *space)
{
	struct socket 	*so;
	long avail;

	if (space == NULL)
		return (EINVAL);

	so = FUNC0(kctlref, unit, NULL);
	if (so == NULL) {
		return (EINVAL);
	}

	avail = FUNC1(&so->so_rcv);
	*space = (avail < 0) ? 0 : avail;
	FUNC2(so, 1);

	return (0);
}