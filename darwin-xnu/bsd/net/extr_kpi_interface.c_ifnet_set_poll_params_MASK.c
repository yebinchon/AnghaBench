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
struct ifnet_poll_params {int dummy; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct ifnet_poll_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int) ; 

errno_t
FUNC3(struct ifnet *ifp, struct ifnet_poll_params *p)
{
	errno_t err;

	if (ifp == NULL)
		return (EINVAL);
	else if (!FUNC2(ifp, 1))
		return (ENXIO);

	err = FUNC0(ifp, p, FALSE);

	/* Release the io ref count */
	FUNC1(ifp);

	return (err);
}