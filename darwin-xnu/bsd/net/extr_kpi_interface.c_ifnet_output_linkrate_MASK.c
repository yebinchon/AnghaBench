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
typedef  scalar_t__ u_int64_t ;
struct TYPE_4__ {scalar_t__ tbr_rate_raw; } ;
struct ifclassq {TYPE_2__ ifcq_tbr; } ;
struct TYPE_3__ {scalar_t__ eff_bw; } ;
struct ifnet {struct ifclassq if_snd; TYPE_1__ if_output_bw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifclassq*) ; 
 scalar_t__ FUNC1 (struct ifclassq*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

u_int64_t
FUNC4(struct ifnet *ifp)
{
	struct ifclassq *ifq = &ifp->if_snd;
	u_int64_t rate;

	FUNC0(ifq);

	rate = ifp->if_output_bw.eff_bw;
	if (FUNC1(ifq)) {
		u_int64_t tbr_rate = ifp->if_snd.ifcq_tbr.tbr_rate_raw;
		FUNC3(tbr_rate > 0);
		rate = FUNC2(rate, ifp->if_snd.ifcq_tbr.tbr_rate_raw);
	}

	return (rate);
}