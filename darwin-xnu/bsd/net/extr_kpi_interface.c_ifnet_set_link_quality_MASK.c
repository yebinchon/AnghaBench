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
typedef  int /*<<< orphan*/ * ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int IFNET_LQM_MAX ; 
 int IFNET_LQM_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

errno_t
FUNC2(ifnet_t ifp, int quality)
{
	errno_t err = 0;

	if (ifp == NULL || quality < IFNET_LQM_MIN || quality > IFNET_LQM_MAX) {
		err = EINVAL;
		goto done;
	}

	if (!FUNC1(ifp, 0)) {
		err = ENXIO;
		goto done;
	}

	FUNC0(ifp, quality, 0);

done:
	return (err);
}