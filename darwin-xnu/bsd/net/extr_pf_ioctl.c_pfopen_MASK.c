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
 int EBUSY ; 
 int ENXIO ; 
 scalar_t__ PFDEV_MAX ; 
 scalar_t__ PFDEV_PFM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_lock ; 
 scalar_t__ pfdevcnt ; 

__attribute__((used)) static int
FUNC3(dev_t dev, int flags, int fmt, struct proc *p)
{
#pragma unused(flags, fmt, p)
	if (FUNC2(dev) >= PFDEV_MAX)
		return (ENXIO);

	if (FUNC2(dev) == PFDEV_PFM) {
		FUNC0(pf_lock);
		if (pfdevcnt != 0) {
			FUNC1(pf_lock);
			return (EBUSY);
		}
		pfdevcnt++;
		FUNC1(pf_lock);
	}
	return (0);
}