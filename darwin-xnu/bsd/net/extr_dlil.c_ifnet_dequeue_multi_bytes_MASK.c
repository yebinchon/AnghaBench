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
typedef  int u_int32_t ;
struct mbuf {int dummy; } ;
struct ifnet {int if_eflags; scalar_t__ if_output_sched_model; int /*<<< orphan*/  if_snd; } ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  scalar_t__ classq_pkt_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLASSQ_DEQUEUE_MAX_PKT_LIMIT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int IFEF_TXSTART ; 
 scalar_t__ IFNET_SCHED_MODEL_MAX ; 
 scalar_t__ QP_MBUF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void**,void**,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int) ; 

errno_t
FUNC4(struct ifnet *ifp, u_int32_t byte_limit,
    struct mbuf **head, struct mbuf **tail, u_int32_t *cnt, u_int32_t *len)
{
	errno_t rc;
	classq_pkt_type_t ptype;
	if (ifp == NULL || head == NULL || byte_limit < 1)
		return (EINVAL);
	else if (!(ifp->if_eflags & IFEF_TXSTART) ||
	    ifp->if_output_sched_model >= IFNET_SCHED_MODEL_MAX)
		return (ENXIO);
	if (!FUNC3(ifp, 1))
		return (ENXIO);

	rc = FUNC1(&ifp->if_snd, CLASSQ_DEQUEUE_MAX_PKT_LIMIT,
	    byte_limit, (void **)head, (void **)tail, cnt, len, &ptype);
	FUNC0((*head == NULL) || (ptype == QP_MBUF));
	FUNC2(ifp);
	return (rc);
}