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
struct tcpcb {scalar_t__ t_adaptive_rtimo; int t_flagsext; scalar_t__ t_rtimo_probes; scalar_t__ t_mpsub; } ;

/* Variables and functions */
 int TF_DETECT_READSTALL ; 
 int /*<<< orphan*/  FUNC0 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*) ; 

__attribute__((used)) static void
FUNC2(struct tcpcb *tp)
{
	if (tp->t_adaptive_rtimo == 0 &&
	    ((tp->t_flagsext & TF_DETECT_READSTALL) ||
	    tp->t_rtimo_probes > 0)) {
		FUNC1(tp);

		if (tp->t_mpsub)
			FUNC0(tp);
	}
}