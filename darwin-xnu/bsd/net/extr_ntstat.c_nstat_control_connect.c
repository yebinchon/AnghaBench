
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int thread_call_func_t ;
struct sockaddr_ctl {int sc_unit; } ;
struct TYPE_5__ {struct TYPE_5__* ncs_next; int ncs_flags; int ncs_unit; int ncs_kctl; int ncs_mtx; } ;
typedef TYPE_1__ nstat_control_state ;
typedef int kern_ctl_ref ;
typedef int errno_t ;


 int ENOMEM ;
 int NSEC_PER_SEC ;
 int NSTAT_FLAG_REQCOUNTS ;
 TYPE_1__* OSMalloc (int,int ) ;
 int bzero (TYPE_1__*,int) ;
 int clock_interval_to_deadline (int,int ,scalar_t__*) ;
 int lck_mtx_init (int *,int ,int *) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 TYPE_1__* nstat_controls ;
 scalar_t__ nstat_idle_check ;
 scalar_t__ nstat_idle_time ;
 int nstat_lck_grp ;
 int nstat_malloc_tag ;
 int nstat_mtx ;
 int thread_call_func_delayed (int ,int *,scalar_t__) ;

__attribute__((used)) static errno_t
nstat_control_connect(
 kern_ctl_ref kctl,
 struct sockaddr_ctl *sac,
 void **uinfo)
{
 nstat_control_state *state = OSMalloc(sizeof(*state), nstat_malloc_tag);
 if (state == ((void*)0)) return ENOMEM;

 bzero(state, sizeof(*state));
 lck_mtx_init(&state->ncs_mtx, nstat_lck_grp, ((void*)0));
 state->ncs_kctl = kctl;
 state->ncs_unit = sac->sc_unit;
 state->ncs_flags = NSTAT_FLAG_REQCOUNTS;
 *uinfo = state;

 lck_mtx_lock(&nstat_mtx);
 state->ncs_next = nstat_controls;
 nstat_controls = state;

 if (nstat_idle_time == 0)
 {
  clock_interval_to_deadline(60, NSEC_PER_SEC, &nstat_idle_time);
  thread_call_func_delayed((thread_call_func_t)nstat_idle_check, ((void*)0), nstat_idle_time);
 }

 lck_mtx_unlock(&nstat_mtx);

 return 0;
}
