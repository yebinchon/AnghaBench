#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_17__ ;
typedef  struct TYPE_20__   TYPE_16__ ;
typedef  struct TYPE_19__   TYPE_14__ ;

/* Type definitions */
typedef  TYPE_2__* uthread_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/ * thread_t ;
typedef  void* pc_t ;
typedef  int /*<<< orphan*/  dtrace_vstate_t ;
struct TYPE_24__ {int dts_arg_error_illval; int /*<<< orphan*/  dts_vstate; } ;
typedef  TYPE_3__ dtrace_state_t ;
struct TYPE_22__ {int (* dtps_getargval ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ;} ;
struct TYPE_25__ {int /*<<< orphan*/  dtpv_name; int /*<<< orphan*/  dtpv_arg; TYPE_1__ dtpv_pops; } ;
typedef  TYPE_4__ dtrace_provider_t ;
struct TYPE_26__ {int dtms_present; int* dtms_arg; int dtms_timestamp; int dtms_walltimestamp; int dtms_machtimestamp; int dtms_ipl; int dtms_epid; int dtms_stackdepth; int dtms_ustackdepth; uintptr_t dtms_caller; int dtms_ucaller; size_t dtms_scratch_ptr; TYPE_16__* dtms_probe; } ;
typedef  TYPE_5__ dtrace_mstate_t ;
struct TYPE_23__ {int /*<<< orphan*/  t_dtrace_errno; } ;
struct TYPE_21__ {size_t cpu_id; } ;
struct TYPE_20__ {int dtpr_id; int /*<<< orphan*/  dtpr_name; int /*<<< orphan*/  dtpr_func; int /*<<< orphan*/  dtpr_mod; TYPE_4__* dtpr_provider; int /*<<< orphan*/  dtpr_aframes; int /*<<< orphan*/  dtpr_arg; } ;
struct TYPE_19__ {int /*<<< orphan*/  cpuc_dtrace_illval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_17__* CPU ; 
 int /*<<< orphan*/  CPU_DTRACE_BADADDR ; 
 int /*<<< orphan*/  CPU_DTRACE_ILLOP ; 
 int /*<<< orphan*/  CPU_DTRACE_NOFAULT ; 
 int /*<<< orphan*/  CPU_DTRACE_NOSCRATCH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_17__*) ; 
 int DIF_VAR_ARG0 ; 
 int DIF_VAR_ARG9 ; 
#define  DIF_VAR_ARGS 160 
#define  DIF_VAR_CALLER 159 
#define  DIF_VAR_CPU 158 
#define  DIF_VAR_CPUCYCLES 157 
#define  DIF_VAR_CPUINSTRS 156 
#define  DIF_VAR_CURTHREAD 155 
#define  DIF_VAR_DISPATCHQADDR 154 
#define  DIF_VAR_EPID 153 
#define  DIF_VAR_ERRNO 152 
#define  DIF_VAR_EXECNAME 151 
#define  DIF_VAR_GID 150 
#define  DIF_VAR_ID 149 
#define  DIF_VAR_IPL 148 
#define  DIF_VAR_MACHTIMESTAMP 147 
#define  DIF_VAR_PID 146 
#define  DIF_VAR_PPID 145 
#define  DIF_VAR_PROBEFUNC 144 
#define  DIF_VAR_PROBEMOD 143 
#define  DIF_VAR_PROBENAME 142 
#define  DIF_VAR_PROBEPROV 141 
#define  DIF_VAR_PTHREAD_SELF 140 
#define  DIF_VAR_STACKDEPTH 139 
#define  DIF_VAR_TID 138 
#define  DIF_VAR_TIMESTAMP 137 
#define  DIF_VAR_UCALLER 136 
#define  DIF_VAR_UID 135 
#define  DIF_VAR_UREGS 134 
#define  DIF_VAR_USTACKDEPTH 133 
#define  DIF_VAR_VCYCLES 132 
#define  DIF_VAR_VINSTRS 131 
#define  DIF_VAR_VTIMESTAMP 130 
#define  DIF_VAR_WALLTIMESTAMP 129 
#define  DIF_VAR_ZONENAME 128 
 int /*<<< orphan*/  FUNC2 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,size_t) ; 
 int DTRACE_MSTATE_ARGS ; 
 int DTRACE_MSTATE_CALLER ; 
 int DTRACE_MSTATE_EPID ; 
 int DTRACE_MSTATE_IPL ; 
 int DTRACE_MSTATE_MACHTIMESTAMP ; 
 int DTRACE_MSTATE_PROBE ; 
 int DTRACE_MSTATE_STACKDEPTH ; 
 int DTRACE_MSTATE_TIMESTAMP ; 
 int DTRACE_MSTATE_UCALLER ; 
 int DTRACE_MSTATE_USTACKDEPTH ; 
 int DTRACE_MSTATE_WALLTIMESTAMP ; 
 int /*<<< orphan*/  MAXCOMLEN ; 
 TYPE_14__* cpu_core ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 uintptr_t FUNC8 (int) ; 
 int FUNC9 (uintptr_t,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int,int,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC13 () ; 
 int FUNC14 () ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (void**,int,int,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int*,int) ; 
 int FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int dtrace_probeid_error ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  dtrace_vtime_references ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int FUNC30 () ; 
 int FUNC31 () ; 
 int FUNC32 () ; 
 int FUNC33 () ; 
 int FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC36 (char*,char*,size_t) ; 
 int FUNC37 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC38 (int /*<<< orphan*/ *) ; 
 int FUNC39 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t
FUNC40(dtrace_mstate_t *mstate, dtrace_state_t *state, uint64_t v,
    uint64_t ndx)
{
	/*
	 * If we're accessing one of the uncached arguments, we'll turn this
	 * into a reference in the args array.
	 */
	if (v >= DIF_VAR_ARG0 && v <= DIF_VAR_ARG9) {
		ndx = v - DIF_VAR_ARG0;
		v = DIF_VAR_ARGS;
	}

	switch (v) {
	case DIF_VAR_ARGS:
		FUNC0(mstate->dtms_present & DTRACE_MSTATE_ARGS);
		if (ndx >= sizeof (mstate->dtms_arg) /
		    sizeof (mstate->dtms_arg[0])) {
			/*
			 * APPLE NOTE: Account for introduction of __dtrace_probe()
			 */
			int aframes = mstate->dtms_probe->dtpr_aframes + 3;
			dtrace_vstate_t *vstate = &state->dts_vstate;
			dtrace_provider_t *pv;
			uint64_t val;

			pv = mstate->dtms_probe->dtpr_provider;
			if (pv->dtpv_pops.dtps_getargval != NULL)
				val = pv->dtpv_pops.dtps_getargval(pv->dtpv_arg,
				    mstate->dtms_probe->dtpr_id,
				    mstate->dtms_probe->dtpr_arg, ndx, aframes);
			/* Special case access of arg5 as passed to dtrace_probe_error() (which see.) */
			else if (mstate->dtms_probe->dtpr_id == dtrace_probeid_error && ndx == 5) {
			        return ((dtrace_state_t *)(uintptr_t)(mstate->dtms_arg[0]))->dts_arg_error_illval;
			}

			else
				val = FUNC12(ndx, aframes, mstate, vstate);

			/*
			 * This is regrettably required to keep the compiler
			 * from tail-optimizing the call to dtrace_getarg().
			 * The condition always evaluates to true, but the
			 * compiler has no way of figuring that out a priori.
			 * (None of this would be necessary if the compiler
			 * could be relied upon to _always_ tail-optimize
			 * the call to dtrace_getarg() -- but it can't.)
			 */
			if (mstate->dtms_probe != NULL)
				return (val);

			FUNC0(0);
		}

		return (mstate->dtms_arg[ndx]);

	case DIF_VAR_UREGS: {
		thread_t thread;

		if (!FUNC22(state))
			return (0);

		if ((thread = FUNC6()) == NULL) {
			FUNC4(CPU_DTRACE_BADADDR);
			cpu_core[CPU->cpu_id].cpuc_dtrace_illval = 0;
			return (0);
		}

		return (FUNC17(FUNC27(thread), ndx));
	}


	case DIF_VAR_CURTHREAD:
		if (!FUNC21(state))
			return (0);

		return ((uint64_t)(uintptr_t)FUNC6());

	case DIF_VAR_TIMESTAMP:
		if (!(mstate->dtms_present & DTRACE_MSTATE_TIMESTAMP)) {
			mstate->dtms_timestamp = FUNC14();
			mstate->dtms_present |= DTRACE_MSTATE_TIMESTAMP;
		}
		return (mstate->dtms_timestamp);

	case DIF_VAR_VTIMESTAMP:
		FUNC0(dtrace_vtime_references != 0);
		return (FUNC11(FUNC6()));

	case DIF_VAR_WALLTIMESTAMP:
		if (!(mstate->dtms_present & DTRACE_MSTATE_WALLTIMESTAMP)) {
			mstate->dtms_walltimestamp = FUNC13();
			mstate->dtms_present |= DTRACE_MSTATE_WALLTIMESTAMP;
		}
		return (mstate->dtms_walltimestamp);

	case DIF_VAR_MACHTIMESTAMP:
		if (!(mstate->dtms_present & DTRACE_MSTATE_MACHTIMESTAMP)) {
			mstate->dtms_machtimestamp = FUNC30();
			mstate->dtms_present |= DTRACE_MSTATE_MACHTIMESTAMP;
		}
		return (mstate->dtms_machtimestamp);

	case DIF_VAR_CPU:
		return ((uint64_t) FUNC10(FUNC6()));

	case DIF_VAR_IPL:
		if (!FUNC21(state))
			return (0);
		if (!(mstate->dtms_present & DTRACE_MSTATE_IPL)) {
			mstate->dtms_ipl = FUNC15();
			mstate->dtms_present |= DTRACE_MSTATE_IPL;
		}
		return (mstate->dtms_ipl);

	case DIF_VAR_EPID:
		FUNC0(mstate->dtms_present & DTRACE_MSTATE_EPID);
		return (mstate->dtms_epid);

	case DIF_VAR_ID:
		FUNC0(mstate->dtms_present & DTRACE_MSTATE_PROBE);
		return (mstate->dtms_probe->dtpr_id);

	case DIF_VAR_STACKDEPTH:
		if (!FUNC21(state))
			return (0);
		if (!(mstate->dtms_present & DTRACE_MSTATE_STACKDEPTH)) {
			/*
			 * APPLE NOTE: Account for introduction of __dtrace_probe()
			 */
			int aframes = mstate->dtms_probe->dtpr_aframes + 3;

			mstate->dtms_stackdepth = FUNC18(aframes);
			mstate->dtms_present |= DTRACE_MSTATE_STACKDEPTH;
		}
		return (mstate->dtms_stackdepth);

	case DIF_VAR_USTACKDEPTH:
		if (!FUNC22(state))
			return (0);
		if (!(mstate->dtms_present & DTRACE_MSTATE_USTACKDEPTH)) {
			/*
			 * See comment in DIF_VAR_PID.
			 */
			if (FUNC2(mstate->dtms_probe) &&
			    FUNC1(CPU)) {
				mstate->dtms_ustackdepth = 0;
			} else {
				FUNC4(CPU_DTRACE_NOFAULT);
				mstate->dtms_ustackdepth =
				    FUNC20();
				FUNC3(CPU_DTRACE_NOFAULT);
			}
			mstate->dtms_present |= DTRACE_MSTATE_USTACKDEPTH;
		}
		return (mstate->dtms_ustackdepth);

	case DIF_VAR_CALLER:
		if (!FUNC21(state))
			return (0);
		if (!(mstate->dtms_present & DTRACE_MSTATE_CALLER)) {
			/*
			 * APPLE NOTE: Account for introduction of __dtrace_probe()
			 */
			int aframes = mstate->dtms_probe->dtpr_aframes + 3;

			if (!FUNC2(mstate->dtms_probe)) {
				/*
				 * If this is an unanchored probe, we are
				 * required to go through the slow path:
				 * dtrace_caller() only guarantees correct
				 * results for anchored probes.
				 */
				pc_t caller[2];

				FUNC16(caller, 2, aframes,
				    (uint32_t *)(uintptr_t)mstate->dtms_arg[0]);
				mstate->dtms_caller = caller[1];
			} else if ((mstate->dtms_caller =
				FUNC8(aframes)) == (uintptr_t)-1) {
				/*
				 * We have failed to do this the quick way;
				 * we must resort to the slower approach of
				 * calling dtrace_getpcstack().
				 */
				pc_t caller;

				FUNC16(&caller, 1, aframes, NULL);
				mstate->dtms_caller = caller;
			}

			mstate->dtms_present |= DTRACE_MSTATE_CALLER;
		}
		return (mstate->dtms_caller);

	case DIF_VAR_UCALLER:
		if (!FUNC22(state))
			return (0);

		if (!(mstate->dtms_present & DTRACE_MSTATE_UCALLER)) {
			uint64_t ustack[3];

			/*
			 * dtrace_getupcstack() fills in the first uint64_t
			 * with the current PID.  The second uint64_t will
			 * be the program counter at user-level.  The third
			 * uint64_t will contain the caller, which is what
			 * we're after.
			 */
			ustack[2] = 0;
			FUNC4(CPU_DTRACE_NOFAULT);
			FUNC19(ustack, 3);
			FUNC3(CPU_DTRACE_NOFAULT);
			mstate->dtms_ucaller = ustack[2];
			mstate->dtms_present |= DTRACE_MSTATE_UCALLER;
		}

		return (mstate->dtms_ucaller);

	case DIF_VAR_PROBEPROV:
		FUNC0(mstate->dtms_present & DTRACE_MSTATE_PROBE);
		return (FUNC9(
		    (uintptr_t)mstate->dtms_probe->dtpr_provider->dtpv_name,
		    state, mstate));

	case DIF_VAR_PROBEMOD:
		FUNC0(mstate->dtms_present & DTRACE_MSTATE_PROBE);
		return (FUNC9(
		    (uintptr_t)mstate->dtms_probe->dtpr_mod,
		    state, mstate));

	case DIF_VAR_PROBEFUNC:
		FUNC0(mstate->dtms_present & DTRACE_MSTATE_PROBE);
		return (FUNC9(
		    (uintptr_t)mstate->dtms_probe->dtpr_func,
		    state, mstate));

	case DIF_VAR_PROBENAME:
		FUNC0(mstate->dtms_present & DTRACE_MSTATE_PROBE);
		return (FUNC9(
		    (uintptr_t)mstate->dtms_probe->dtpr_name,
		    state, mstate));

	case DIF_VAR_PID:
		if (!FUNC23(state))
			return (0);

		/*
		 * Note that we are assuming that an unanchored probe is
		 * always due to a high-level interrupt.  (And we're assuming
		 * that there is only a single high level interrupt.)
		 */
		if (FUNC2(mstate->dtms_probe) && FUNC1(CPU))
			/* Anchored probe that fires while on an interrupt accrues to process 0 */
			return 0; 

		return ((uint64_t)FUNC24());

	case DIF_VAR_PPID:
		if (!FUNC23(state))
			return (0);

		/*
		 * See comment in DIF_VAR_PID.
		 */
		if (FUNC2(mstate->dtms_probe) && FUNC1(CPU))
			return (0);

		return ((uint64_t)FUNC25());

	case DIF_VAR_TID:
		/* We do not need to check for null current_thread() */
		return FUNC39(FUNC6()); /* globally unique */

	case DIF_VAR_PTHREAD_SELF:
		if (!FUNC22(state))
			return (0);

		/* Not currently supported, but we should be able to delta the dispatchqaddr and dispatchqoffset to get pthread_self */
		return 0;

	case DIF_VAR_DISPATCHQADDR:
		if (!FUNC22(state))
			return (0);

		/* We do not need to check for null current_thread() */
		return FUNC38(FUNC6());

	case DIF_VAR_EXECNAME:
	{
		char *xname = (char *)mstate->dtms_scratch_ptr;
		size_t scratch_size = MAXCOMLEN+1;
		
		/* The scratch allocation's lifetime is that of the clause. */
		if (!FUNC5(mstate, scratch_size)) {
			FUNC4(CPU_DTRACE_NOSCRATCH);
			return 0;
		}
			
		if (!FUNC23(state))
			return (0);

		mstate->dtms_scratch_ptr += scratch_size;
		FUNC35( xname, scratch_size );

		return ((uint64_t)(uintptr_t)xname);
	}


	case DIF_VAR_ZONENAME:
	{
		/* scratch_size is equal to length('global') + 1 for the null-terminator. */
		char *zname = (char *)mstate->dtms_scratch_ptr;
		size_t scratch_size = 6 + 1;

		if (!FUNC22(state))
			return (0);

		/* The scratch allocation's lifetime is that of the clause. */
		if (!FUNC5(mstate, scratch_size)) {
			FUNC4(CPU_DTRACE_NOSCRATCH);
			return 0;
		}

		mstate->dtms_scratch_ptr += scratch_size;

		/* The kernel does not provide zonename, it will always return 'global'. */
		FUNC36(zname, "global", scratch_size);

		return ((uint64_t)(uintptr_t)zname);
	}

#if MONOTONIC
	case DIF_VAR_CPUINSTRS:
		return mt_cur_cpu_instrs();

	case DIF_VAR_CPUCYCLES:
		return mt_cur_cpu_cycles();

	case DIF_VAR_VINSTRS:
		return mt_cur_thread_instrs();

	case DIF_VAR_VCYCLES:
		return mt_cur_thread_cycles();
#else /* MONOTONIC */
	case DIF_VAR_CPUINSTRS: /* FALLTHROUGH */
	case DIF_VAR_CPUCYCLES: /* FALLTHROUGH */
	case DIF_VAR_VINSTRS: /* FALLTHROUGH */
	case DIF_VAR_VCYCLES: /* FALLTHROUGH */
		return 0;
#endif /* !MONOTONIC */

	case DIF_VAR_UID:
		if (!FUNC23(state))
			return (0);

		/*
		 * See comment in DIF_VAR_PID.
		 */
		if (FUNC2(mstate->dtms_probe) && FUNC1(CPU))
			return (0);

		return ((uint64_t) FUNC26());

	case DIF_VAR_GID:
		if (!FUNC22(state))
			return (0);

		/*
		 * See comment in DIF_VAR_PID.
		 */
		if (FUNC2(mstate->dtms_probe) && FUNC1(CPU))
			return (0);

		if (FUNC7() != NULL)
			/* Credential does not require lazy initialization. */
			return ((uint64_t)FUNC29());
		else {
			/* proc_lock would be taken under kauth_cred_proc_ref() in kauth_cred_get(). */
			FUNC4(CPU_DTRACE_ILLOP);
			return -1ULL;
		}

	case DIF_VAR_ERRNO: {
		uthread_t uthread = (uthread_t)FUNC28(FUNC6());
		if (!FUNC22(state))
			return (0);

		/*
		 * See comment in DIF_VAR_PID.
		 */
		if (FUNC2(mstate->dtms_probe) && FUNC1(CPU))
			return (0);

		if (uthread)
			return (uint64_t)uthread->t_dtrace_errno;
		else {
			FUNC4(CPU_DTRACE_ILLOP);
			return -1ULL;
		}
	}

	default:
		FUNC4(CPU_DTRACE_ILLOP);
		return (0);
	}
}