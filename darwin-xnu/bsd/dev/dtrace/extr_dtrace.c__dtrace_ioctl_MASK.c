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
typedef  scalar_t__ user_addr_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_long ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct proc*) ; 

int
FUNC4(dev_t dev, u_long cmd, caddr_t data, int fflag, struct proc *p)
{
#pragma unused(p)
	int err, rv = 0;
    user_addr_t uaddrp;

    if (FUNC3(p))
		uaddrp = *(user_addr_t *)data;
	else
		uaddrp = (user_addr_t) *(uint32_t *)data;

	err = FUNC2(dev, cmd, uaddrp, fflag, FUNC1(), &rv);
	
	/* Darwin's BSD ioctls only return -1 or zero. Overload errno to mimic Solaris. 20 bits suffice. */
	if (err != 0) {
		FUNC0( (err & 0xfffff000) == 0 );
		return (err & 0xfff); /* ioctl will return -1 and will set errno to an error code < 4096 */
	} else if (rv != 0) {
		FUNC0( (rv & 0xfff00000) == 0 );
		return (((rv & 0xfffff) << 12)); /* ioctl will return -1 and will set errno to a value >= 4096 */
	} else 
		return 0;
}