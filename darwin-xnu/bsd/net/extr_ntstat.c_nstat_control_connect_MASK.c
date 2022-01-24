#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_call_func_t ;
struct sockaddr_ctl {int /*<<< orphan*/  sc_unit; } ;
struct TYPE_5__ {struct TYPE_5__* ncs_next; int /*<<< orphan*/  ncs_flags; int /*<<< orphan*/  ncs_unit; int /*<<< orphan*/  ncs_kctl; int /*<<< orphan*/  ncs_mtx; } ;
typedef  TYPE_1__ nstat_control_state ;
typedef  int /*<<< orphan*/  kern_ctl_ref ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int /*<<< orphan*/  NSTAT_FLAG_REQCOUNTS ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* nstat_controls ; 
 scalar_t__ nstat_idle_check ; 
 scalar_t__ nstat_idle_time ; 
 int /*<<< orphan*/  nstat_lck_grp ; 
 int /*<<< orphan*/  nstat_malloc_tag ; 
 int /*<<< orphan*/  nstat_mtx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static errno_t
FUNC7(
	kern_ctl_ref		kctl,
	struct sockaddr_ctl	*sac,
	void				**uinfo)
{
	nstat_control_state	*state = FUNC0(sizeof(*state), nstat_malloc_tag);
	if (state == NULL) return ENOMEM;

	FUNC1(state, sizeof(*state));
	FUNC3(&state->ncs_mtx, nstat_lck_grp, NULL);
	state->ncs_kctl = kctl;
	state->ncs_unit = sac->sc_unit;
	state->ncs_flags = NSTAT_FLAG_REQCOUNTS;
	*uinfo = state;

	FUNC4(&nstat_mtx);
	state->ncs_next = nstat_controls;
	nstat_controls = state;

	if (nstat_idle_time == 0)
	{
		FUNC2(60, NSEC_PER_SEC, &nstat_idle_time);
		FUNC6((thread_call_func_t)nstat_idle_check, NULL, nstat_idle_time);
	}

	FUNC5(&nstat_mtx);

	return 0;
}