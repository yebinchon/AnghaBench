#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  p_dtrace_probes; } ;
typedef  TYPE_1__ proc_t ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_11__ {scalar_t__ ftp_rcount; scalar_t__ ftp_ccount; scalar_t__ ftp_mcount; int /*<<< orphan*/  ftp_cmtx; int /*<<< orphan*/  ftp_mtx; TYPE_9__* ftp_proc; int /*<<< orphan*/  ftp_retired; int /*<<< orphan*/  ftp_pid; } ;
typedef  TYPE_2__ fasttrap_provider_t ;
struct TYPE_12__ {scalar_t__ ftpc_acount; scalar_t__ ftpc_rcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  fasttrap_lck_grp ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(fasttrap_provider_t *provider)
{
	pid_t pid = provider->ftp_pid;
	proc_t *p;

	/*
	 * There need to be no associated enabled probes, no consumers
	 * creating probes, and no meta providers referencing this provider.
	 */
	FUNC0(provider->ftp_rcount == 0);
	FUNC0(provider->ftp_ccount == 0);
	FUNC0(provider->ftp_mcount == 0);

	/*
	 * If this provider hasn't been retired, we need to explicitly drop the
	 * count of active providers on the associated process structure.
	 */
	if (!provider->ftp_retired) {
		FUNC1(&provider->ftp_proc->ftpc_acount, -1);
		FUNC0(provider->ftp_proc->ftpc_acount <
		provider->ftp_proc->ftpc_rcount);
	}

	FUNC2(provider->ftp_proc);

	/*
	 * APPLE NOTE:  explicit lock management. Not 100% certain we need this, the
	 * memory is freed even without the destroy. Maybe accounting cleanup?
	 */
	FUNC4(&provider->ftp_mtx, fasttrap_lck_grp);
	FUNC4(&provider->ftp_cmtx, fasttrap_lck_grp);

	FUNC3(provider, sizeof (fasttrap_provider_t));

	/*
	 * Decrement p_dtrace_probes on the process whose provider we're
	 * freeing. We don't have to worry about clobbering somone else's
	 * modifications to it because we have locked the bucket that
	 * corresponds to this process's hash chain in the provider hash
	 * table. Don't sweat it if we can't find the process.
	 */
	if ((p = FUNC5(pid)) == NULL) {
		return;
	}

	FUNC6(p);
	p->p_dtrace_probes--;
	FUNC8(p);
	
	FUNC7(p);
}