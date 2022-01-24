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
struct ifnet_stats_param {int /*<<< orphan*/  no_protocol; int /*<<< orphan*/  dropped; int /*<<< orphan*/  collisions; int /*<<< orphan*/  errors_out; int /*<<< orphan*/  multicasts_out; int /*<<< orphan*/  bytes_out; int /*<<< orphan*/  packets_out; int /*<<< orphan*/  errors_in; int /*<<< orphan*/  multicasts_in; int /*<<< orphan*/  bytes_in; int /*<<< orphan*/  packets_in; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifi_noproto; int /*<<< orphan*/  ifi_iqdrops; int /*<<< orphan*/  ifi_collisions; int /*<<< orphan*/  ifi_oerrors; int /*<<< orphan*/  ifi_omcasts; int /*<<< orphan*/  ifi_obytes; int /*<<< orphan*/  ifi_opackets; int /*<<< orphan*/  ifi_ierrors; int /*<<< orphan*/  ifi_imcasts; int /*<<< orphan*/  ifi_ibytes; int /*<<< orphan*/  ifi_ipackets; } ;
struct ifnet {scalar_t__ if_data_threshold; int /*<<< orphan*/  if_lastchange; TYPE_1__ if_data; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 

errno_t
FUNC3(struct ifnet *ifp, const struct ifnet_stats_param *s)
{
	if (ifp == NULL)
		return (EINVAL);

	FUNC1(&ifp->if_data.ifi_ipackets, s->packets_in);
	FUNC1(&ifp->if_data.ifi_ibytes, s->bytes_in);
	FUNC1(&ifp->if_data.ifi_imcasts, s->multicasts_in);
	FUNC1(&ifp->if_data.ifi_ierrors, s->errors_in);

	FUNC1(&ifp->if_data.ifi_opackets, s->packets_out);
	FUNC1(&ifp->if_data.ifi_obytes, s->bytes_out);
	FUNC1(&ifp->if_data.ifi_omcasts, s->multicasts_out);
	FUNC1(&ifp->if_data.ifi_oerrors, s->errors_out);

	FUNC1(&ifp->if_data.ifi_collisions, s->collisions);
	FUNC1(&ifp->if_data.ifi_iqdrops, s->dropped);
	FUNC1(&ifp->if_data.ifi_noproto, s->no_protocol);

	/* Touch the last change time. */
	FUNC0(&ifp->if_lastchange);

	if (ifp->if_data_threshold != 0)
		FUNC2(ifp);

	return (0);
}