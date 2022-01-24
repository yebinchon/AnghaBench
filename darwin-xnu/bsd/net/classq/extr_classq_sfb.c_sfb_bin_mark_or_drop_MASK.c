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
struct sfbbinstats {int bytes; scalar_t__ pkts; } ;
struct sfb {int sfb_fc_threshold; scalar_t__ sfb_allocation; scalar_t__ sfb_drop_thresh; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sfb*) ; 
 scalar_t__ FUNC1 (struct sfb*) ; 

__attribute__((used)) static int
FUNC2(struct sfb *sp, struct sfbbinstats *bin)
{
	int ret = 0;
	if (FUNC1(sp)) {
		/*
		 * Mark or drop if this bin has more
		 * bytes than the flowcontrol threshold.
		 */
		if (FUNC0(sp) &&
		    bin->bytes >= (sp->sfb_fc_threshold << 1))
			ret = 1;
	} else {
		if (bin->pkts >= sp->sfb_allocation &&
		    bin->pkts >= sp->sfb_drop_thresh)
			ret = 1;	/* drop or mark */
	}
	return (ret);
}