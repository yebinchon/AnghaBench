#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int p_csflags; int /*<<< orphan*/ * p_dtrace_ptss_pages; } ;
typedef  TYPE_3__ proc_t ;
struct TYPE_22__ {int ftp_enabled; scalar_t__ ftp_id; scalar_t__ ftp_ntps; int /*<<< orphan*/  ftp_pid; TYPE_1__* ftp_prov; } ;
typedef  TYPE_4__ fasttrap_probe_t ;
struct TYPE_20__ {int /*<<< orphan*/ * dcr_cred; } ;
struct TYPE_23__ {TYPE_2__ dts_cred; } ;
typedef  TYPE_5__ dtrace_state_t ;
typedef  scalar_t__ dtrace_id_t ;
struct TYPE_19__ {scalar_t__ ftp_retired; int /*<<< orphan*/  ftp_mtx; int /*<<< orphan*/  ftp_rcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CE_WARN ; 
 int CS_HARD ; 
 int CS_KILL ; 
 int DTRACE_NCLIENTS ; 
 int FASTTRAP_ENABLE_FAIL ; 
 int FASTTRAP_ENABLE_PARTIAL ; 
 TYPE_3__* PROC_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_5__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__*,int) ; 
 int FUNC8 (TYPE_3__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC16(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg, id)
	fasttrap_probe_t *probe = parg;
	proc_t *p;
	int i, rc;

	FUNC0(probe != NULL);
	FUNC0(!probe->ftp_enabled);
	FUNC0(id == probe->ftp_id);
	// ASSERT(MUTEX_HELD(&cpu_lock));

	/*
	 * Increment the count of enabled probes on this probe's provider;
	 * the provider can't go away while the probe still exists. We
	 * must increment this even if we aren't able to properly enable
	 * this probe.
	 */
	FUNC9(&probe->ftp_prov->ftp_mtx);
	probe->ftp_prov->ftp_rcount++;
	FUNC10(&probe->ftp_prov->ftp_mtx);

	/*
	 * If this probe's provider is retired (meaning it was valid in a
	 * previously exec'ed incarnation of this address space), bail out. The
	 * provider can't go away while we're in this code path.
	 */
	if (probe->ftp_prov->ftp_retired)
	    return(0);

	/*
	 * If we can't find the process, it may be that we're in the context of
	 * a fork in which the traced process is being born and we're copying
	 * USDT probes. Otherwise, the process is gone so bail.
	 */
	if ((p = FUNC14(probe->ftp_pid)) == PROC_NULL) {
		/*
		 * APPLE NOTE: We should never end up here. The Solaris sprlock()
		 * does not return process's with SIDL set, but we always return
		 * the child process.
		 */
	    return(0);
	}

	if ((p->p_csflags & (CS_KILL|CS_HARD))) {
		FUNC13(p);
		for (i = 0; i < DTRACE_NCLIENTS; i++) {
			dtrace_state_t *state = FUNC4(i);
			if (state == NULL)
				continue;
			if (state->dts_cred.dcr_cred == NULL)
				continue;
			FUNC11(state->dts_cred.dcr_cred, p);
		}
		rc = FUNC2(p);
		FUNC12(p);
		if (rc == 0) {
			FUNC15(p);
			FUNC1(CE_WARN, "process doesn't allow invalid code pages, failing to install fasttrap probe\n");
			return (0);
		}
	}

	/*
	 * APPLE NOTE: We do not have an equivalent thread structure to Solaris.
	 * Solaris uses its ulwp_t struct for scratch space to support the pid provider.
	 * To mimic this, we allocate on demand scratch space. If this is the first
	 * time a probe has been enabled in this process, we need to allocate scratch
	 * space for each already existing thread. Now is a good time to do this, as
	 * the target process is suspended and the proc_lock is held.
	 */
	if (p->p_dtrace_ptss_pages == NULL) {
		FUNC3(p);
	}

	// ASSERT(!(p->p_flag & SVFORK));
	FUNC13(p);

	/*
	 * We have to enable the trap entry point before any user threads have
	 * the chance to execute the trap instruction we're about to place
	 * in their process's text.
	 */
	FUNC6();

	/*
	 * Enable all the tracepoints and add this probe's id to each
	 * tracepoint's list of active probes.
	 */
	for (i = 0; i < (int)probe->ftp_ntps; i++) {
		if ((rc = FUNC8(p, probe, i)) != 0) {
			/*
			 * If enabling the tracepoint failed completely,
			 * we don't have to disable it; if the failure
			 * was only partial we must disable it.
			 */
			if (rc == FASTTRAP_ENABLE_FAIL)
				i--;
			else
				FUNC0(rc == FASTTRAP_ENABLE_PARTIAL);

			/*
			 * Back up and pull out all the tracepoints we've
			 * created so far for this probe.
			 */
			while (i >= 0) {
				FUNC7(p, probe, i);
				i--;
			}

			FUNC12(p);
			FUNC15(p);

			/*
			 * Since we're not actually enabling this probe,
			 * drop our reference on the trap table entry.
			 */
			FUNC5();
			return(0);
		}
	}

	FUNC12(p);
	FUNC15(p);

	probe->ftp_enabled = 1;
	return (0);
}