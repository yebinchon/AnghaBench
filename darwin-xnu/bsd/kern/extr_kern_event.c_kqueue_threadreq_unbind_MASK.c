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
struct proc {int dummy; } ;
struct kqrequest {int kqr_state; } ;

/* Variables and functions */
 int KQR_WORKLOOP ; 
 int /*<<< orphan*/  FUNC0 (struct kqrequest*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,struct kqrequest*) ; 

void
FUNC3(struct proc *p, struct kqrequest *kqr)
{
	if (kqr->kqr_state & KQR_WORKLOOP) {
		FUNC1(p, FUNC0(kqr));
	} else {
		FUNC2(p, kqr);
	}
}