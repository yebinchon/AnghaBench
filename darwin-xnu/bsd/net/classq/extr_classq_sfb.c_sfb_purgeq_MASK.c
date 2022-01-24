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
struct sfb {TYPE_1__* sfb_ifp; } ;
typedef  int /*<<< orphan*/  pktsched_pkt_t ;
typedef  int /*<<< orphan*/  class_queue_t ;
struct TYPE_2__ {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct sfb*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4(struct sfb *sp, class_queue_t *q, u_int32_t flow, u_int32_t *packets,
    u_int32_t *bytes)
{
	u_int32_t cnt = 0, len = 0;
	pktsched_pkt_t pkt;

	FUNC0(&sp->sfb_ifp->if_snd);
	while (FUNC3(sp, q, flow, TRUE, &pkt) != NULL) {
		cnt++;
		len += FUNC2(&pkt);
		FUNC1(&pkt);
	}

	if (packets != NULL)
		*packets = cnt;
	if (bytes != NULL)
		*bytes = len;
}