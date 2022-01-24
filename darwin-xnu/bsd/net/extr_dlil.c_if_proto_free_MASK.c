#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct net_event_data {int dummy; } ;
struct kev_dl_proto_data {int proto_family; scalar_t__ proto_remaining_count; } ;
struct ifnet {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* detached ) (struct ifnet*,int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* detached ) (struct ifnet*,int) ;} ;
struct TYPE_6__ {TYPE_2__ v2; TYPE_1__ v1; } ;
struct if_proto {int protocol_family; scalar_t__ proto_kpi; TYPE_3__ kpi; int /*<<< orphan*/  detached; int /*<<< orphan*/  refcount; struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  KEV_DL_PROTO_DETACHED ; 
 int /*<<< orphan*/  KEV_DL_SUBCLASS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dlif_proto_zone ; 
 scalar_t__ FUNC2 (struct ifnet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_event_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ kProtoKPI_v1 ; 
 scalar_t__ kProtoKPI_v2 ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct if_proto*) ; 

__attribute__((used)) static void
FUNC13(struct if_proto *proto)
{
	u_int32_t oldval;
	struct ifnet *ifp = proto->ifp;
	u_int32_t proto_family = proto->protocol_family;
	struct kev_dl_proto_data ev_pr_data;

	oldval = FUNC1(&proto->refcount, -1);
	if (oldval > 1)
		return;

	/* No more reference on this, protocol must have been detached */
	FUNC0(proto->detached);

	if (proto->proto_kpi == kProtoKPI_v1) {
		if (proto->kpi.v1.detached)
			proto->kpi.v1.detached(ifp, proto->protocol_family);
	}
	if (proto->proto_kpi == kProtoKPI_v2) {
		if (proto->kpi.v2.detached)
			proto->kpi.v2.detached(ifp, proto->protocol_family);
	}

	/*
	 * Cleanup routes that may still be in the routing table for that
	 * interface/protocol pair.
	 */
	FUNC5(ifp, proto_family);

	/*
	 * The reserved field carries the number of protocol still attached
	 * (subject to change)
	 */
	FUNC8(ifp);
	ev_pr_data.proto_family = proto_family;
	ev_pr_data.proto_remaining_count = FUNC2(ifp, NULL, 0);
	FUNC7(ifp);

	FUNC3(ifp, KEV_DL_SUBCLASS, KEV_DL_PROTO_DETACHED,
	    (struct net_event_data *)&ev_pr_data,
	    sizeof (struct kev_dl_proto_data));

	if (ev_pr_data.proto_remaining_count == 0) {
		/*
		 * The protocol count has gone to zero, mark the interface down.
		 * This used to be done by configd.KernelEventMonitor, but that
		 * is inherently prone to races (rdar://problem/30810208).
		 */
		(void) FUNC9(ifp, 0, IFF_UP);
		(void) FUNC6(ifp, 0, SIOCSIFFLAGS, NULL);
		FUNC4(ifp);
	}

	FUNC12(dlif_proto_zone, proto);
}