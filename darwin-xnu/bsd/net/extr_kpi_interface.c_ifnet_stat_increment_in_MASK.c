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
typedef  scalar_t__ u_int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  ifi_ierrors; int /*<<< orphan*/  ifi_ibytes; int /*<<< orphan*/  ifi_ipackets; } ;
struct ifnet {scalar_t__ if_data_threshold; int /*<<< orphan*/  if_lastchange; TYPE_1__ if_data; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 

errno_t
FUNC3(struct ifnet *ifp, u_int32_t packets_in,
    u_int32_t bytes_in, u_int32_t errors_in)
{
	if (ifp == NULL)
		return (EINVAL);

	if (packets_in != 0)
		FUNC1(&ifp->if_data.ifi_ipackets, packets_in);
	if (bytes_in != 0)
		FUNC1(&ifp->if_data.ifi_ibytes, bytes_in);
	if (errors_in != 0)
		FUNC1(&ifp->if_data.ifi_ierrors, errors_in);

	FUNC0(&ifp->if_lastchange);

	if (ifp->if_data_threshold != 0)
		FUNC2(ifp);

	return (0);
}