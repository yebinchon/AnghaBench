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
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ PFDEV_MAX ; 
 scalar_t__ PFDEV_PFM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_lock ; 
 scalar_t__ pfdevcnt ; 

__attribute__((used)) static int
FUNC4(dev_t dev, int flags, int fmt, struct proc *p)
{
#pragma unused(flags, fmt, p)
	if (FUNC3(dev) >= PFDEV_MAX)
		return (ENXIO);

	if (FUNC3(dev) == PFDEV_PFM) {
		FUNC1(pf_lock);
		FUNC0(pfdevcnt > 0);
		pfdevcnt--;
		FUNC2(pf_lock);
	}
	return (0);
}