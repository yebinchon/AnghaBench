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
struct pf_state_key {scalar_t__ refcnt; struct pf_state_key* app_state; int /*<<< orphan*/  states; } ;
struct pf_state {struct pf_state_key* state_key; } ;

/* Variables and functions */
 int PF_DT_SKIP_EXTGWY ; 
 int PF_DT_SKIP_LANEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pf_state_key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pf_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  pf_app_state_pl ; 
 int /*<<< orphan*/  pf_state_key_pl ; 
 int /*<<< orphan*/  pf_state_tree_ext_gwy ; 
 int /*<<< orphan*/  pf_state_tree_lan_ext ; 
 int /*<<< orphan*/  pf_statetbl_ext_gwy ; 
 int /*<<< orphan*/  pf_statetbl_lan_ext ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pf_state_key*) ; 

__attribute__((used)) static void
FUNC3(struct pf_state *s, int flags)
{
	struct pf_state_key	*sk = s->state_key;

	if (sk == NULL)
		return;

	s->state_key = NULL;
	FUNC1(&sk->states, s, next);
	if (--sk->refcnt == 0) {
		if (!(flags & PF_DT_SKIP_EXTGWY))
			FUNC0(pf_state_tree_ext_gwy,
			    &pf_statetbl_ext_gwy, sk);
		if (!(flags & PF_DT_SKIP_LANEXT))
			FUNC0(pf_state_tree_lan_ext,
			    &pf_statetbl_lan_ext, sk);
		if (sk->app_state)
			FUNC2(&pf_app_state_pl, sk->app_state);
		FUNC2(&pf_state_key_pl, sk);
	}
}