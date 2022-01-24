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
struct sfb_fcl {int /*<<< orphan*/  fclist; } ;
struct sfb {int dummy; } ;

/* Variables and functions */
 int SFB_BINS ; 
 struct sfb_fcl* FUNC0 (struct sfb*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sfb*,struct sfb_fcl*) ; 

__attribute__((used)) static void
FUNC3(struct sfb *sp)
{
	int i;

	/* Move all the flow control entries to the flowadv list */
	for (i = 0; i < SFB_BINS; ++i) {
		struct sfb_fcl *fcl = FUNC0(sp, i);
		if (!FUNC1(&fcl->fclist))
			FUNC2(sp, fcl);
	}
}