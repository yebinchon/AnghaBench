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
typedef  int /*<<< orphan*/  tpr_t ;
struct session {scalar_t__ s_ttyvp; } ;
struct proc {int p_flag; } ;

/* Variables and functions */
 int P_CONTROLT ; 
 struct session* SESSION_NULL ; 
 struct session* FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct session*) ; 

tpr_t
FUNC2(struct proc *p)
{
	struct session * sessp;

	sessp = FUNC0(p);

	if (p->p_flag & P_CONTROLT && sessp->s_ttyvp) {
		return ((tpr_t)sessp);
	}
	if (sessp != SESSION_NULL)
		FUNC1(sessp);

	return ((tpr_t) NULL);
}