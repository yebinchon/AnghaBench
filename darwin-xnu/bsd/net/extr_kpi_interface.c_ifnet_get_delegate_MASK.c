#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_10__ {TYPE_2__* ifp; } ;
struct TYPE_11__ {TYPE_1__ if_delegated; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

errno_t
FUNC5(ifnet_t ifp, ifnet_t *pdelegated_ifp)
{
	if (ifp == NULL || pdelegated_ifp == NULL)
		return (EINVAL);
	else if (!FUNC1(ifp, 1))
		return (ENXIO);

	FUNC3(ifp);
	if (ifp->if_delegated.ifp != NULL)
		FUNC4(ifp->if_delegated.ifp);
	*pdelegated_ifp = ifp->if_delegated.ifp;
	FUNC2(ifp);

	/* Release the io ref count */
	FUNC0(ifp);

	return (0);
}