
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {int* timeout; } ;
struct TYPE_3__ {int states; int running; } ;


 size_t PFTM_INTERVAL ;
 int PWAIT ;
 scalar_t__ RB_EMPTY (int *) ;
 int VERIFY (int ) ;
 int current_thread () ;
 int hz ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_shared (int ) ;
 int net_update_uptime () ;
 TYPE_2__ pf_default_rule ;
 int pf_lock ;
 scalar_t__ pf_normalize_isempty () ;
 int pf_perim_lock ;
 int pf_purge_expired_fragments () ;
 int pf_purge_expired_src_nodes () ;
 int pf_purge_expired_states (int) ;
 int * pf_purge_thread ;
 int pf_purge_thread_fn ;
 TYPE_1__ pf_status ;
 int thread_deallocate (int ) ;
 int thread_terminate (int ) ;
 int tree_src_tracking ;
 int tsleep0 (int ,int ,char*,int,int (*) (int)) ;

__attribute__((used)) static int
pf_purge_thread_cont(int err)
{
#pragma unused(err)
 static u_int32_t nloops = 0;
 int t = 1;






 net_update_uptime();

 lck_rw_lock_shared(pf_perim_lock);
 lck_mtx_lock(pf_lock);


 if (!pf_status.running) {
  pf_purge_expired_states(pf_status.states);
  pf_purge_expired_fragments();
  pf_purge_expired_src_nodes();


  if (pf_purge_thread == ((void*)0)) {
   lck_mtx_unlock(pf_lock);
   lck_rw_done(pf_perim_lock);

   thread_deallocate(current_thread());
   thread_terminate(current_thread());

   return (0);
  } else {

   if (pf_status.states == 0 &&
       pf_normalize_isempty() &&
       RB_EMPTY(&tree_src_tracking)) {
    nloops = 0;
    t = 0;
   }
   goto done;
  }
 }


 pf_purge_expired_states(1 + (pf_status.states
     / pf_default_rule.timeout[PFTM_INTERVAL]));


 if (++nloops >= pf_default_rule.timeout[PFTM_INTERVAL]) {
  pf_purge_expired_fragments();
  pf_purge_expired_src_nodes();
  nloops = 0;
 }
done:
 lck_mtx_unlock(pf_lock);
 lck_rw_done(pf_perim_lock);

 (void) tsleep0(pf_purge_thread_fn, PWAIT, "pf_purge_cont",
     t * hz, pf_purge_thread_cont);

 VERIFY(0);

 return (0);
}
