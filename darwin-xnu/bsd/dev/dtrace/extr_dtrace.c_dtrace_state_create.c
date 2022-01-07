
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int minor_t ;
typedef int major_t ;
struct TYPE_7__ {int dcr_visible; int dcr_action; int * dcr_cred; } ;
struct TYPE_6__ {TYPE_3__* dtvs_state; } ;
struct TYPE_8__ {TYPE_2__ dts_cred; scalar_t__* dts_options; TYPE_1__ dts_vstate; void* dts_deadman; void* dts_cleaner; scalar_t__ dts_buf_over_limit; void* dts_aggbuffer; void* dts_buffer; int dts_dev; int dts_aggid_arena; scalar_t__ dts_epid; } ;
typedef TYPE_3__ dtrace_state_t ;
typedef scalar_t__ dtrace_optval_t ;
typedef int dtrace_buffer_t ;
typedef int dev_t ;
typedef int cred_t ;
typedef int c ;


 int B_FALSE ;
 void* CYCLIC_NONE ;
 size_t DTRACEOPT_AGGRATE ;
 size_t DTRACEOPT_BUFLIMIT ;
 size_t DTRACEOPT_BUFPOLICY ;
 scalar_t__ DTRACEOPT_BUFPOLICY_SWITCH ;
 size_t DTRACEOPT_BUFRESIZE ;
 scalar_t__ DTRACEOPT_BUFRESIZE_AUTO ;
 size_t DTRACEOPT_CLEANRATE ;
 size_t DTRACEOPT_CPU ;
 size_t DTRACEOPT_JSTACKFRAMES ;
 size_t DTRACEOPT_JSTACKSTRSIZE ;
 int DTRACEOPT_MAX ;
 size_t DTRACEOPT_NSPEC ;
 size_t DTRACEOPT_SPECSIZE ;
 size_t DTRACEOPT_STACKFRAMES ;
 size_t DTRACEOPT_STATUSRATE ;
 size_t DTRACEOPT_STRSIZE ;
 size_t DTRACEOPT_SWITCHRATE ;
 scalar_t__ DTRACEOPT_UNSET ;
 size_t DTRACEOPT_USTACKFRAMES ;
 scalar_t__ DTRACE_CPUALL ;
 void* DTRACE_CRA_ALL ;
 int DTRACE_CRA_KERNEL ;
 int DTRACE_CRA_PROC ;
 int DTRACE_CRA_PROC_CONTROL ;
 int DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER ;
 int DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE ;
 int DTRACE_CRA_PROC_DESTRUCTIVE_CREDCHG ;
 void* DTRACE_CRV_ALL ;
 int DTRACE_CRV_ALLPROC ;
 int DTRACE_CRV_ALLZONE ;
 int DTRACE_CRV_KERNEL ;
 scalar_t__ DTRACE_EPIDNONE ;
 int DTRACE_NCLIENTS ;
 int ERESTART ;
 int KM_SLEEP ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ NCPU ;
 int PRIV_ALL ;
 int PRIV_DTRACE_KERNEL ;
 int PRIV_DTRACE_PROC ;
 int PRIV_DTRACE_USER ;
 scalar_t__ PRIV_POLICY_ONLY (int *,int ,int ) ;
 int PRIV_PROC_OWNER ;
 int PRIV_PROC_ZONE ;
 int UINT32_MAX ;
 int VMC_IDENTIFIER ;
 int VM_SLEEP ;
 int cpu_lock ;
 int crhold (int *) ;
 int ddi_driver_major (int ) ;
 scalar_t__ dtrace_aggrate_default ;
 int dtrace_are_restrictions_relaxed () ;
 scalar_t__ dtrace_buflimit_default ;
 scalar_t__ dtrace_cleanrate_default ;
 int dtrace_devi ;
 scalar_t__ dtrace_is_restricted () ;
 scalar_t__ dtrace_jstackframes_default ;
 scalar_t__ dtrace_jstackstrsize_default ;
 int dtrace_lock ;
 scalar_t__ dtrace_nspec_default ;
 scalar_t__ dtrace_specsize_default ;
 scalar_t__ dtrace_stackframes_default ;
 TYPE_3__* dtrace_state_allocate (int) ;
 scalar_t__ dtrace_statusrate_default ;
 scalar_t__ dtrace_strsize_default ;
 scalar_t__ dtrace_switchrate_default ;
 scalar_t__ dtrace_ustackframes_default ;
 int getemajor (int ) ;
 int getminor (int ) ;
 int kauth_cred_ref (int *) ;
 void* kmem_zalloc (int,int ) ;
 int makedev (int ,int) ;
 int printf (char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int vmem_create (char*,void*,int ,int,int *,int *,int *,int ,int) ;

__attribute__((used)) static int
dtrace_state_create(dev_t *devp, cred_t *cr, dtrace_state_t **new_state)
{
 minor_t minor;
 major_t major;
 char c[30];
 dtrace_state_t *state;
 dtrace_optval_t *opt;
 int bufsize = (int)NCPU * sizeof (dtrace_buffer_t), i;

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);
 LCK_MTX_ASSERT(&cpu_lock, LCK_MTX_ASSERT_OWNED);


 *new_state = ((void*)0);

 if (devp != ((void*)0)) {
  minor = getminor(*devp);
 }
 else {
  minor = DTRACE_NCLIENTS - 1;
 }

 state = dtrace_state_allocate(minor);
 if (((void*)0) == state) {
  printf("dtrace_open: couldn't acquire minor number %d. This usually means that too many DTrace clients are in use at the moment", minor);
  return (ERESTART);
 }

 state->dts_epid = DTRACE_EPIDNONE + 1;

 (void) snprintf(c, sizeof (c), "dtrace_aggid_%d", minor);
 state->dts_aggid_arena = vmem_create(c, (void *)1, UINT32_MAX, 1,
     ((void*)0), ((void*)0), ((void*)0), 0, VM_SLEEP | VMC_IDENTIFIER);

 if (devp != ((void*)0)) {
  major = getemajor(*devp);
 } else {
  major = ddi_driver_major(dtrace_devi);
 }

 state->dts_dev = makedev(major, minor);

 if (devp != ((void*)0))
  *devp = state->dts_dev;







 state->dts_buffer = kmem_zalloc(bufsize, KM_SLEEP);
 state->dts_aggbuffer = kmem_zalloc(bufsize, KM_SLEEP);
 state->dts_buf_over_limit = 0;
 state->dts_cleaner = CYCLIC_NONE;
 state->dts_deadman = CYCLIC_NONE;
 state->dts_vstate.dtvs_state = state;

 for (i = 0; i < DTRACEOPT_MAX; i++)
  state->dts_options[i] = DTRACEOPT_UNSET;




 opt = state->dts_options;
 opt[DTRACEOPT_BUFPOLICY] = DTRACEOPT_BUFPOLICY_SWITCH;
 opt[DTRACEOPT_BUFRESIZE] = DTRACEOPT_BUFRESIZE_AUTO;
 opt[DTRACEOPT_NSPEC] = dtrace_nspec_default;
 opt[DTRACEOPT_SPECSIZE] = dtrace_specsize_default;
 opt[DTRACEOPT_CPU] = (dtrace_optval_t)DTRACE_CPUALL;
 opt[DTRACEOPT_STRSIZE] = dtrace_strsize_default;
 opt[DTRACEOPT_STACKFRAMES] = dtrace_stackframes_default;
 opt[DTRACEOPT_USTACKFRAMES] = dtrace_ustackframes_default;
 opt[DTRACEOPT_CLEANRATE] = dtrace_cleanrate_default;
 opt[DTRACEOPT_AGGRATE] = dtrace_aggrate_default;
 opt[DTRACEOPT_SWITCHRATE] = dtrace_switchrate_default;
 opt[DTRACEOPT_STATUSRATE] = dtrace_statusrate_default;
 opt[DTRACEOPT_JSTACKFRAMES] = dtrace_jstackframes_default;
 opt[DTRACEOPT_JSTACKSTRSIZE] = dtrace_jstackstrsize_default;
 opt[DTRACEOPT_BUFLIMIT] = dtrace_buflimit_default;
 if (cr == ((void*)0) || PRIV_POLICY_ONLY(cr, PRIV_ALL, B_FALSE)) {
  state->dts_cred.dcr_visible = DTRACE_CRV_ALL;
  state->dts_cred.dcr_action = DTRACE_CRA_ALL;
 }
 else {







  crhold(cr);
  state->dts_cred.dcr_cred = cr;





  if (PRIV_POLICY_ONLY(cr, PRIV_DTRACE_USER, B_FALSE) ||
      PRIV_POLICY_ONLY(cr, PRIV_DTRACE_PROC, B_FALSE)) {
   state->dts_cred.dcr_action |= DTRACE_CRA_PROC;
  }







  if (PRIV_POLICY_ONLY(cr, PRIV_DTRACE_USER, B_FALSE)) {
   if (PRIV_POLICY_ONLY(cr, PRIV_PROC_OWNER, B_FALSE)) {
    state->dts_cred.dcr_visible |=
        DTRACE_CRV_ALLPROC;

    state->dts_cred.dcr_action |=
        DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER;
   }

   if (PRIV_POLICY_ONLY(cr, PRIV_PROC_ZONE, B_FALSE)) {
    state->dts_cred.dcr_visible |=
        DTRACE_CRV_ALLZONE;

    state->dts_cred.dcr_action |=
        DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE;
   }
   state->dts_cred.dcr_action |=
    DTRACE_CRA_PROC_DESTRUCTIVE_CREDCHG;
  }







  if (PRIV_POLICY_ONLY(cr, PRIV_DTRACE_KERNEL, B_FALSE)) {





   state->dts_cred.dcr_visible |= DTRACE_CRV_KERNEL |
       DTRACE_CRV_ALLPROC | DTRACE_CRV_ALLZONE;

   state->dts_cred.dcr_action |= DTRACE_CRA_KERNEL |
       DTRACE_CRA_PROC;




   if (PRIV_POLICY_ONLY(cr, PRIV_PROC_OWNER, B_FALSE))
    state->dts_cred.dcr_action |=
        DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER;





   if (PRIV_POLICY_ONLY(cr, PRIV_PROC_ZONE, B_FALSE))
    state->dts_cred.dcr_action |=
        DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE;
   state->dts_cred.dcr_action |=
    DTRACE_CRA_PROC_DESTRUCTIVE_CREDCHG;
  }







  if (PRIV_POLICY_ONLY(cr, PRIV_DTRACE_PROC, B_FALSE)) {
   if (PRIV_POLICY_ONLY(cr, PRIV_PROC_OWNER, B_FALSE))
    state->dts_cred.dcr_action |=
        DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER;

   if (PRIV_POLICY_ONLY(cr, PRIV_PROC_ZONE, B_FALSE))
    state->dts_cred.dcr_action |=
        DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE;
  }
 }


 *new_state = state;
 return(0);
}
