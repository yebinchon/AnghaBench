
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_17__ ;
typedef struct TYPE_20__ TYPE_16__ ;
typedef struct TYPE_19__ TYPE_14__ ;


typedef TYPE_2__* uthread_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int * thread_t ;
typedef void* pc_t ;
typedef int dtrace_vstate_t ;
struct TYPE_24__ {int dts_arg_error_illval; int dts_vstate; } ;
typedef TYPE_3__ dtrace_state_t ;
struct TYPE_22__ {int (* dtps_getargval ) (int ,int,int ,int,int) ;} ;
struct TYPE_25__ {int dtpv_name; int dtpv_arg; TYPE_1__ dtpv_pops; } ;
typedef TYPE_4__ dtrace_provider_t ;
struct TYPE_26__ {int dtms_present; int* dtms_arg; int dtms_timestamp; int dtms_walltimestamp; int dtms_machtimestamp; int dtms_ipl; int dtms_epid; int dtms_stackdepth; int dtms_ustackdepth; uintptr_t dtms_caller; int dtms_ucaller; size_t dtms_scratch_ptr; TYPE_16__* dtms_probe; } ;
typedef TYPE_5__ dtrace_mstate_t ;
struct TYPE_23__ {int t_dtrace_errno; } ;
struct TYPE_21__ {size_t cpu_id; } ;
struct TYPE_20__ {int dtpr_id; int dtpr_name; int dtpr_func; int dtpr_mod; TYPE_4__* dtpr_provider; int dtpr_aframes; int dtpr_arg; } ;
struct TYPE_19__ {int cpuc_dtrace_illval; } ;


 int ASSERT (int) ;
 TYPE_17__* CPU ;
 int CPU_DTRACE_BADADDR ;
 int CPU_DTRACE_ILLOP ;
 int CPU_DTRACE_NOFAULT ;
 int CPU_DTRACE_NOSCRATCH ;
 int CPU_ON_INTR (TYPE_17__*) ;
 int DIF_VAR_ARG0 ;
 int DIF_VAR_ARG9 ;
 int DTRACE_ANCHORED (TYPE_16__*) ;
 int DTRACE_CPUFLAG_CLEAR (int ) ;
 int DTRACE_CPUFLAG_SET (int ) ;
 int DTRACE_INSCRATCH (TYPE_5__*,size_t) ;
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
 int MAXCOMLEN ;
 TYPE_14__* cpu_core ;
 int * current_thread () ;
 int * dtrace_CRED () ;
 uintptr_t dtrace_caller (int) ;
 int dtrace_dif_varstr (uintptr_t,TYPE_3__*,TYPE_5__*) ;
 int dtrace_get_thread_last_cpu_id (int *) ;
 int dtrace_get_thread_vtime (int *) ;
 int dtrace_getarg (int,int,TYPE_5__*,int *) ;
 int dtrace_gethrestime () ;
 int dtrace_gethrtime () ;
 int dtrace_getipl () ;
 int dtrace_getpcstack (void**,int,int,int *) ;
 int dtrace_getreg (int ,int) ;
 int dtrace_getstackdepth (int) ;
 int dtrace_getupcstack (int*,int) ;
 int dtrace_getustackdepth () ;
 int dtrace_priv_kernel (TYPE_3__*) ;
 int dtrace_priv_proc (TYPE_3__*) ;
 int dtrace_priv_proc_relaxed (TYPE_3__*) ;
 int dtrace_probeid_error ;
 int dtrace_proc_selfpid () ;
 int dtrace_proc_selfppid () ;
 int dtrace_proc_selfruid () ;
 int dtrace_vtime_references ;
 int find_user_regs (int *) ;
 int get_bsdthread_info (int *) ;
 int kauth_getgid () ;
 int mach_absolute_time () ;
 int mt_cur_cpu_cycles () ;
 int mt_cur_cpu_instrs () ;
 int mt_cur_thread_cycles () ;
 int mt_cur_thread_instrs () ;
 int proc_selfname (char*,size_t) ;
 int strlcpy (char*,char*,size_t) ;
 int stub1 (int ,int,int ,int,int) ;
 int thread_dispatchqaddr (int *) ;
 int thread_tid (int *) ;

__attribute__((used)) static uint64_t
dtrace_dif_variable(dtrace_mstate_t *mstate, dtrace_state_t *state, uint64_t v,
    uint64_t ndx)
{




 if (v >= DIF_VAR_ARG0 && v <= DIF_VAR_ARG9) {
  ndx = v - DIF_VAR_ARG0;
  v = 160;
 }

 switch (v) {
 case 160:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_ARGS);
  if (ndx >= sizeof (mstate->dtms_arg) /
      sizeof (mstate->dtms_arg[0])) {



   int aframes = mstate->dtms_probe->dtpr_aframes + 3;
   dtrace_vstate_t *vstate = &state->dts_vstate;
   dtrace_provider_t *pv;
   uint64_t val;

   pv = mstate->dtms_probe->dtpr_provider;
   if (pv->dtpv_pops.dtps_getargval != ((void*)0))
    val = pv->dtpv_pops.dtps_getargval(pv->dtpv_arg,
        mstate->dtms_probe->dtpr_id,
        mstate->dtms_probe->dtpr_arg, ndx, aframes);

   else if (mstate->dtms_probe->dtpr_id == dtrace_probeid_error && ndx == 5) {
           return ((dtrace_state_t *)(uintptr_t)(mstate->dtms_arg[0]))->dts_arg_error_illval;
   }

   else
    val = dtrace_getarg(ndx, aframes, mstate, vstate);
   if (mstate->dtms_probe != ((void*)0))
    return (val);

   ASSERT(0);
  }

  return (mstate->dtms_arg[ndx]);

 case 134: {
  thread_t thread;

  if (!dtrace_priv_proc(state))
   return (0);

  if ((thread = current_thread()) == ((void*)0)) {
   DTRACE_CPUFLAG_SET(CPU_DTRACE_BADADDR);
   cpu_core[CPU->cpu_id].cpuc_dtrace_illval = 0;
   return (0);
  }

  return (dtrace_getreg(find_user_regs(thread), ndx));
 }


 case 155:
  if (!dtrace_priv_kernel(state))
   return (0);

  return ((uint64_t)(uintptr_t)current_thread());

 case 137:
  if (!(mstate->dtms_present & DTRACE_MSTATE_TIMESTAMP)) {
   mstate->dtms_timestamp = dtrace_gethrtime();
   mstate->dtms_present |= DTRACE_MSTATE_TIMESTAMP;
  }
  return (mstate->dtms_timestamp);

 case 130:
  ASSERT(dtrace_vtime_references != 0);
  return (dtrace_get_thread_vtime(current_thread()));

 case 129:
  if (!(mstate->dtms_present & DTRACE_MSTATE_WALLTIMESTAMP)) {
   mstate->dtms_walltimestamp = dtrace_gethrestime();
   mstate->dtms_present |= DTRACE_MSTATE_WALLTIMESTAMP;
  }
  return (mstate->dtms_walltimestamp);

 case 147:
  if (!(mstate->dtms_present & DTRACE_MSTATE_MACHTIMESTAMP)) {
   mstate->dtms_machtimestamp = mach_absolute_time();
   mstate->dtms_present |= DTRACE_MSTATE_MACHTIMESTAMP;
  }
  return (mstate->dtms_machtimestamp);

 case 158:
  return ((uint64_t) dtrace_get_thread_last_cpu_id(current_thread()));

 case 148:
  if (!dtrace_priv_kernel(state))
   return (0);
  if (!(mstate->dtms_present & DTRACE_MSTATE_IPL)) {
   mstate->dtms_ipl = dtrace_getipl();
   mstate->dtms_present |= DTRACE_MSTATE_IPL;
  }
  return (mstate->dtms_ipl);

 case 153:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_EPID);
  return (mstate->dtms_epid);

 case 149:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_PROBE);
  return (mstate->dtms_probe->dtpr_id);

 case 139:
  if (!dtrace_priv_kernel(state))
   return (0);
  if (!(mstate->dtms_present & DTRACE_MSTATE_STACKDEPTH)) {



   int aframes = mstate->dtms_probe->dtpr_aframes + 3;

   mstate->dtms_stackdepth = dtrace_getstackdepth(aframes);
   mstate->dtms_present |= DTRACE_MSTATE_STACKDEPTH;
  }
  return (mstate->dtms_stackdepth);

 case 133:
  if (!dtrace_priv_proc(state))
   return (0);
  if (!(mstate->dtms_present & DTRACE_MSTATE_USTACKDEPTH)) {



   if (DTRACE_ANCHORED(mstate->dtms_probe) &&
       CPU_ON_INTR(CPU)) {
    mstate->dtms_ustackdepth = 0;
   } else {
    DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
    mstate->dtms_ustackdepth =
        dtrace_getustackdepth();
    DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT);
   }
   mstate->dtms_present |= DTRACE_MSTATE_USTACKDEPTH;
  }
  return (mstate->dtms_ustackdepth);

 case 159:
  if (!dtrace_priv_kernel(state))
   return (0);
  if (!(mstate->dtms_present & DTRACE_MSTATE_CALLER)) {



   int aframes = mstate->dtms_probe->dtpr_aframes + 3;

   if (!DTRACE_ANCHORED(mstate->dtms_probe)) {






    pc_t caller[2];

    dtrace_getpcstack(caller, 2, aframes,
        (uint32_t *)(uintptr_t)mstate->dtms_arg[0]);
    mstate->dtms_caller = caller[1];
   } else if ((mstate->dtms_caller =
    dtrace_caller(aframes)) == (uintptr_t)-1) {





    pc_t caller;

    dtrace_getpcstack(&caller, 1, aframes, ((void*)0));
    mstate->dtms_caller = caller;
   }

   mstate->dtms_present |= DTRACE_MSTATE_CALLER;
  }
  return (mstate->dtms_caller);

 case 136:
  if (!dtrace_priv_proc(state))
   return (0);

  if (!(mstate->dtms_present & DTRACE_MSTATE_UCALLER)) {
   uint64_t ustack[3];
   ustack[2] = 0;
   DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
   dtrace_getupcstack(ustack, 3);
   DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT);
   mstate->dtms_ucaller = ustack[2];
   mstate->dtms_present |= DTRACE_MSTATE_UCALLER;
  }

  return (mstate->dtms_ucaller);

 case 141:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_PROBE);
  return (dtrace_dif_varstr(
      (uintptr_t)mstate->dtms_probe->dtpr_provider->dtpv_name,
      state, mstate));

 case 143:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_PROBE);
  return (dtrace_dif_varstr(
      (uintptr_t)mstate->dtms_probe->dtpr_mod,
      state, mstate));

 case 144:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_PROBE);
  return (dtrace_dif_varstr(
      (uintptr_t)mstate->dtms_probe->dtpr_func,
      state, mstate));

 case 142:
  ASSERT(mstate->dtms_present & DTRACE_MSTATE_PROBE);
  return (dtrace_dif_varstr(
      (uintptr_t)mstate->dtms_probe->dtpr_name,
      state, mstate));

 case 146:
  if (!dtrace_priv_proc_relaxed(state))
   return (0);






  if (DTRACE_ANCHORED(mstate->dtms_probe) && CPU_ON_INTR(CPU))

   return 0;

  return ((uint64_t)dtrace_proc_selfpid());

 case 145:
  if (!dtrace_priv_proc_relaxed(state))
   return (0);




  if (DTRACE_ANCHORED(mstate->dtms_probe) && CPU_ON_INTR(CPU))
   return (0);

  return ((uint64_t)dtrace_proc_selfppid());

 case 138:

  return thread_tid(current_thread());

 case 140:
  if (!dtrace_priv_proc(state))
   return (0);


  return 0;

 case 154:
  if (!dtrace_priv_proc(state))
   return (0);


  return thread_dispatchqaddr(current_thread());

 case 151:
 {
  char *xname = (char *)mstate->dtms_scratch_ptr;
  size_t scratch_size = MAXCOMLEN+1;


  if (!DTRACE_INSCRATCH(mstate, scratch_size)) {
   DTRACE_CPUFLAG_SET(CPU_DTRACE_NOSCRATCH);
   return 0;
  }

  if (!dtrace_priv_proc_relaxed(state))
   return (0);

  mstate->dtms_scratch_ptr += scratch_size;
  proc_selfname( xname, scratch_size );

  return ((uint64_t)(uintptr_t)xname);
 }


 case 128:
 {

  char *zname = (char *)mstate->dtms_scratch_ptr;
  size_t scratch_size = 6 + 1;

  if (!dtrace_priv_proc(state))
   return (0);


  if (!DTRACE_INSCRATCH(mstate, scratch_size)) {
   DTRACE_CPUFLAG_SET(CPU_DTRACE_NOSCRATCH);
   return 0;
  }

  mstate->dtms_scratch_ptr += scratch_size;


  strlcpy(zname, "global", scratch_size);

  return ((uint64_t)(uintptr_t)zname);
 }
 case 156:
 case 157:
 case 131:
 case 132:
  return 0;


 case 135:
  if (!dtrace_priv_proc_relaxed(state))
   return (0);




  if (DTRACE_ANCHORED(mstate->dtms_probe) && CPU_ON_INTR(CPU))
   return (0);

  return ((uint64_t) dtrace_proc_selfruid());

 case 150:
  if (!dtrace_priv_proc(state))
   return (0);




  if (DTRACE_ANCHORED(mstate->dtms_probe) && CPU_ON_INTR(CPU))
   return (0);

  if (dtrace_CRED() != ((void*)0))

   return ((uint64_t)kauth_getgid());
  else {

   DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
   return -1ULL;
  }

 case 152: {
  uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());
  if (!dtrace_priv_proc(state))
   return (0);




  if (DTRACE_ANCHORED(mstate->dtms_probe) && CPU_ON_INTR(CPU))
   return (0);

  if (uthread)
   return (uint64_t)uthread->t_dtrace_errno;
  else {
   DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
   return -1ULL;
  }
 }

 default:
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
 }
}
