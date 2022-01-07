
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_20__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_17__ ;


typedef int uint64_t ;
typedef size_t processorid_t ;
typedef int dtrace_xcall_t ;
struct TYPE_22__ {int dtvs_dynvars; } ;
struct TYPE_24__ {int dcr_destructive; } ;
struct TYPE_25__ {int* dts_options; scalar_t__ dts_activity; int dts_nspeculations; scalar_t__ dts_necbs; size_t dts_needed; TYPE_4__* dts_speculations; TYPE_4__* dts_aggbuffer; TYPE_4__* dts_buffer; void* dts_deadman; int dts_laststatus; int dts_alive; void* dts_cleaner; TYPE_1__ dts_vstate; int * dts_aggregations; scalar_t__ dts_speculates; struct TYPE_25__* dts_anon; TYPE_2__ dts_cred; scalar_t__ dts_destructive; } ;
typedef TYPE_3__ dtrace_state_t ;
struct TYPE_26__ {int dtb_flags; struct TYPE_26__* dtsp_buffer; } ;
typedef TYPE_4__ dtrace_speculation_t ;
typedef int dtrace_optval_t ;
typedef int dtrace_icookie_t ;
typedef TYPE_4__ dtrace_buffer_t ;
struct TYPE_27__ {int cyt_interval; scalar_t__ cyt_when; } ;
typedef TYPE_6__ cyc_time_t ;
struct TYPE_28__ {void* cyh_level; TYPE_3__* cyh_arg; void* cyh_func; } ;
typedef TYPE_7__ cyc_handler_t ;
typedef void* cyc_func_t ;
struct TYPE_23__ {size_t cpu_id; } ;
struct TYPE_21__ {size_t dta_beganon; int * dta_state; } ;


 int ASSERT (int) ;
 TYPE_20__* CPU ;
 void* CY_LOW_LEVEL ;
 int DTRACEBUF_INACTIVE ;
 size_t DTRACEOPT_AGGSIZE ;
 size_t DTRACEOPT_BUFLIMIT ;
 size_t DTRACEOPT_BUFRESIZE ;
 int DTRACEOPT_BUFRESIZE_MANUAL ;
 size_t DTRACEOPT_BUFSIZE ;
 size_t DTRACEOPT_CLEANRATE ;
 size_t DTRACEOPT_DYNVARSIZE ;
 size_t DTRACEOPT_GRABANON ;
 size_t DTRACEOPT_NSPEC ;
 size_t DTRACEOPT_SPECSIZE ;
 size_t DTRACEOPT_STATUSRATE ;
 size_t DTRACEOPT_STRSIZE ;
 int DTRACEOPT_UNSET ;
 scalar_t__ DTRACE_ACTIVITY_ACTIVE ;
 scalar_t__ DTRACE_ACTIVITY_DRAINING ;
 scalar_t__ DTRACE_ACTIVITY_INACTIVE ;
 scalar_t__ DTRACE_ACTIVITY_WARMUP ;
 int DTRACE_CPUALL ;
 int EACCES ;
 int EALREADY ;
 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSPC ;
 int INT_MAX ;
 int KM_NOSLEEP ;
 scalar_t__ NCPU ;
 int cpu_lock ;
 void* cyclic_add (TYPE_7__*,TYPE_6__*) ;
 TYPE_17__ dtrace_anon ;
 TYPE_3__* dtrace_anon_grab () ;
 scalar_t__ dtrace_buffer_activate ;
 int dtrace_buffer_free (TYPE_4__*) ;
 int dtrace_buflimit_max ;
 int dtrace_buflimit_min ;
 int dtrace_cleanrate_max ;
 int dtrace_cleanrate_min ;
 int dtrace_deadman_interval ;
 int dtrace_dstate_defsize ;
 int dtrace_dstate_init (int *,int) ;
 int dtrace_enabling_prime (TYPE_3__*) ;
 int dtrace_gethrtime () ;
 int dtrace_interrupt_disable () ;
 int dtrace_interrupt_enable (int ) ;
 int dtrace_lock ;
 int dtrace_probe (int ,int ,int ,int ,int ,int ) ;
 int dtrace_probeid_begin ;
 int dtrace_state_buffers (TYPE_3__*) ;
 scalar_t__ dtrace_state_clean ;
 scalar_t__ dtrace_state_deadman ;
 int dtrace_state_prereserve (TYPE_3__*) ;
 int dtrace_statusrate_max ;
 int dtrace_strsize_max ;
 int dtrace_strsize_min ;
 int dtrace_xcall (int ,int ,TYPE_3__*) ;
 int kmem_free (TYPE_4__*,int) ;
 TYPE_4__* kmem_zalloc (int,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

__attribute__((used)) static int
dtrace_state_go(dtrace_state_t *state, processorid_t *cpu)
{
 dtrace_optval_t *opt = state->dts_options, sz, nspec;
 dtrace_speculation_t *spec;
 dtrace_buffer_t *buf;
 cyc_handler_t hdlr;
 cyc_time_t when;
 int rval = 0, i, bufsize = (int)NCPU * sizeof (dtrace_buffer_t);
 dtrace_icookie_t cookie;

 lck_mtx_lock(&cpu_lock);
 lck_mtx_lock(&dtrace_lock);

 if (state->dts_activity != DTRACE_ACTIVITY_INACTIVE) {
  rval = EBUSY;
  goto out;
 }





 dtrace_enabling_prime(state);

 if (state->dts_destructive && !state->dts_cred.dcr_destructive) {
  rval = EACCES;
  goto out;
 }

 dtrace_state_prereserve(state);






 nspec = opt[DTRACEOPT_NSPEC];
 ASSERT(nspec != DTRACEOPT_UNSET);

 if (nspec > INT_MAX) {
  rval = ENOMEM;
  goto out;
 }

 spec = kmem_zalloc(nspec * sizeof (dtrace_speculation_t), KM_NOSLEEP);

 if (spec == ((void*)0)) {
  rval = ENOMEM;
  goto out;
 }

 state->dts_speculations = spec;
 state->dts_nspeculations = (int)nspec;

 for (i = 0; i < nspec; i++) {
  if ((buf = kmem_zalloc(bufsize, KM_NOSLEEP)) == ((void*)0)) {
   rval = ENOMEM;
   goto err;
  }

  spec[i].dtsp_buffer = buf;
 }

 if (opt[DTRACEOPT_GRABANON] != DTRACEOPT_UNSET) {
  if (dtrace_anon.dta_state == ((void*)0)) {
   rval = ENOENT;
   goto out;
  }

  if (state->dts_necbs != 0) {
   rval = EALREADY;
   goto out;
  }

  state->dts_anon = dtrace_anon_grab();
  ASSERT(state->dts_anon != ((void*)0));
  state = state->dts_anon;






  state->dts_options[DTRACEOPT_GRABANON] =
      opt[DTRACEOPT_GRABANON];

  *cpu = dtrace_anon.dta_beganon;







  if (state->dts_activity != DTRACE_ACTIVITY_INACTIVE)
   goto out;
 }

 if (opt[DTRACEOPT_AGGSIZE] != DTRACEOPT_UNSET &&
     opt[DTRACEOPT_AGGSIZE] != 0) {
  if (state->dts_aggregations == ((void*)0)) {





   opt[DTRACEOPT_AGGSIZE] = 0;
  } else {




   if (opt[DTRACEOPT_BUFSIZE] == DTRACEOPT_UNSET ||
     (size_t)opt[DTRACEOPT_BUFSIZE] < state->dts_needed) {
    opt[DTRACEOPT_BUFSIZE] = state->dts_needed;
   }
  }
 }

 if (opt[DTRACEOPT_SPECSIZE] != DTRACEOPT_UNSET &&
     opt[DTRACEOPT_SPECSIZE] != 0) {
  if (!state->dts_speculates) {





   opt[DTRACEOPT_SPECSIZE] = 0;
  }
 }





 sz = sizeof (uint64_t);

 if ((state->dts_needed != 0 && opt[DTRACEOPT_BUFSIZE] < sz) ||
     (state->dts_speculates && opt[DTRACEOPT_SPECSIZE] < sz) ||
     (state->dts_aggregations != ((void*)0) && opt[DTRACEOPT_AGGSIZE] < sz)) {







  rval = ENOSPC;
  goto out;
 }

 if ((rval = dtrace_state_buffers(state)) != 0)
  goto err;

 if ((sz = opt[DTRACEOPT_DYNVARSIZE]) == DTRACEOPT_UNSET)
  sz = dtrace_dstate_defsize;

 do {
  rval = dtrace_dstate_init(&state->dts_vstate.dtvs_dynvars, sz);

  if (rval == 0)
   break;

  if (opt[DTRACEOPT_BUFRESIZE] == DTRACEOPT_BUFRESIZE_MANUAL)
   goto err;
 } while (sz >>= 1);

 opt[DTRACEOPT_DYNVARSIZE] = sz;

 if (rval != 0)
  goto err;

 if (opt[DTRACEOPT_STATUSRATE] > dtrace_statusrate_max)
  opt[DTRACEOPT_STATUSRATE] = dtrace_statusrate_max;

 if (opt[DTRACEOPT_CLEANRATE] == 0)
  opt[DTRACEOPT_CLEANRATE] = dtrace_cleanrate_max;

 if (opt[DTRACEOPT_CLEANRATE] < dtrace_cleanrate_min)
  opt[DTRACEOPT_CLEANRATE] = dtrace_cleanrate_min;

 if (opt[DTRACEOPT_CLEANRATE] > dtrace_cleanrate_max)
  opt[DTRACEOPT_CLEANRATE] = dtrace_cleanrate_max;

 if (opt[DTRACEOPT_STRSIZE] > dtrace_strsize_max)
  opt[DTRACEOPT_STRSIZE] = dtrace_strsize_max;

 if (opt[DTRACEOPT_STRSIZE] < dtrace_strsize_min)
  opt[DTRACEOPT_STRSIZE] = dtrace_strsize_min;

 if (opt[DTRACEOPT_BUFLIMIT] > dtrace_buflimit_max)
  opt[DTRACEOPT_BUFLIMIT] = dtrace_buflimit_max;

 if (opt[DTRACEOPT_BUFLIMIT] < dtrace_buflimit_min)
  opt[DTRACEOPT_BUFLIMIT] = dtrace_buflimit_min;

 hdlr.cyh_func = (cyc_func_t)dtrace_state_clean;
 hdlr.cyh_arg = state;
 hdlr.cyh_level = CY_LOW_LEVEL;

 when.cyt_when = 0;
 when.cyt_interval = opt[DTRACEOPT_CLEANRATE];

 state->dts_cleaner = cyclic_add(&hdlr, &when);

 hdlr.cyh_func = (cyc_func_t)dtrace_state_deadman;
 hdlr.cyh_arg = state;
 hdlr.cyh_level = CY_LOW_LEVEL;

 when.cyt_when = 0;
 when.cyt_interval = dtrace_deadman_interval;

 state->dts_alive = state->dts_laststatus = dtrace_gethrtime();
 state->dts_deadman = cyclic_add(&hdlr, &when);

 state->dts_activity = DTRACE_ACTIVITY_WARMUP;







 cookie = dtrace_interrupt_disable();
 *cpu = CPU->cpu_id;
 ASSERT(state->dts_buffer[*cpu].dtb_flags & DTRACEBUF_INACTIVE);
 state->dts_buffer[*cpu].dtb_flags &= ~DTRACEBUF_INACTIVE;

 dtrace_probe(dtrace_probeid_begin,
     (uint64_t)(uintptr_t)state, 0, 0, 0, 0);
 dtrace_interrupt_enable(cookie);




 ASSERT(state->dts_activity == DTRACE_ACTIVITY_WARMUP ||
     state->dts_activity == DTRACE_ACTIVITY_DRAINING);

 if (state->dts_activity == DTRACE_ACTIVITY_WARMUP)
  state->dts_activity = DTRACE_ACTIVITY_ACTIVE;
 dtrace_xcall(DTRACE_CPUALL,
     (dtrace_xcall_t)dtrace_buffer_activate, state);
 goto out;

err:
 dtrace_buffer_free(state->dts_buffer);
 dtrace_buffer_free(state->dts_aggbuffer);

 if ((nspec = state->dts_nspeculations) == 0) {
  ASSERT(state->dts_speculations == ((void*)0));
  goto out;
 }

 spec = state->dts_speculations;
 ASSERT(spec != ((void*)0));

 for (i = 0; i < state->dts_nspeculations; i++) {
  if ((buf = spec[i].dtsp_buffer) == ((void*)0))
   break;

  dtrace_buffer_free(buf);
  kmem_free(buf, bufsize);
 }

 kmem_free(spec, nspec * sizeof (dtrace_speculation_t));
 state->dts_nspeculations = 0;
 state->dts_speculations = ((void*)0);

out:
 lck_mtx_unlock(&dtrace_lock);
 lck_mtx_unlock(&cpu_lock);

 return (rval);
}
