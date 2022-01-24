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
struct ifnet {scalar_t__ if_data_threshold; TYPE_1__ if_data; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 

errno_t
FUNC2(struct ifnet *ifp, struct ifnet_stats_param *s)
{
	if (ifp == NULL)
		return (EINVAL);

	FUNC0(s->packets_in, &ifp->if_data.ifi_ipackets);
	FUNC0(s->bytes_in, &ifp->if_data.ifi_ibytes);
	FUNC0(s->multicasts_in, &ifp->if_data.ifi_imcasts);
	FUNC0(s->errors_in, &ifp->if_data.ifi_ierrors);

	FUNC0(s->packets_out, &ifp->if_data.ifi_opackets);
	FUNC0(s->bytes_out, &ifp->if_data.ifi_obytes);
	FUNC0(s->multicasts_out, &ifp->if_data.ifi_omcasts);
	FUNC0(s->errors_out, &ifp->if_data.ifi_oerrors);

	FUNC0(s->collisions, &ifp->if_data.ifi_collisions);
	FUNC0(s->dropped, &ifp->if_data.ifi_iqdrops);
	FUNC0(s->no_protocol, &ifp->if_data.ifi_noproto);

	if (ifp->if_data_threshold != 0)
		FUNC1(ifp);

	return (0);
}