#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sfb_fcl {scalar_t__ cnt; int /*<<< orphan*/  fclist; } ;
struct TYPE_3__ {int /*<<< orphan*/  flow_feedback; } ;
struct sfb {TYPE_1__ sfb_stats; TYPE_2__* sfb_ifp; } ;
struct TYPE_4__ {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct sfb *sp, struct sfb_fcl *fcl)
{
	FUNC0(&sp->sfb_ifp->if_snd);
	FUNC2(FUNC1(&fcl->fclist) || fcl->cnt > 0);
	sp->sfb_stats.flow_feedback += fcl->cnt;
	fcl->cnt = 0;

	FUNC3(&fcl->fclist);
	FUNC2(fcl->cnt == 0 && FUNC1(&fcl->fclist));
}