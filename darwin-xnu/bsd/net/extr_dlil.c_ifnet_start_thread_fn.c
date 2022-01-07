
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;
typedef scalar_t__ u_int32_t ;
typedef int thread_name ;
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct thread {int dummy; } ;
struct ifclassq {int dummy; } ;
struct ifnet {char* if_xname; int if_start_active; scalar_t__ if_start_req; int if_eflags; int if_start_delayed; scalar_t__ if_start_delay_qlen; int if_start_flags; scalar_t__ if_start_delay_timeout; struct timespec if_start_cycle; int if_start_lock; int (* if_start ) (struct ifnet*) ;struct thread* if_start_thread; struct ifclassq if_snd; } ;
struct dlil_threading_info {scalar_t__ tag; int input_lck; struct thread* wloop_thr; struct thread* poll_thr; scalar_t__ net_affinity; } ;
typedef int ifname ;


 int IFCQ_IS_EMPTY (struct ifclassq*) ;
 scalar_t__ IFCQ_LEN (struct ifclassq*) ;
 scalar_t__ IFCQ_TBR_IS_ENABLED (struct ifclassq*) ;
 int IFEF_DELAY_START ;
 int IFEF_ENQUEUE_MULTI ;
 int IFNAMSIZ ;
 int IFSF_FLOW_CONTROLLED ;
 int MAXTHREADNAMESIZE ;
 int PSPIN ;
 int PZERO ;
 struct thread* THREAD_NULL ;
 int VERIFY (int) ;
 int bzero (char*,int) ;
 struct thread* current_thread () ;
 int dlil_affinity_set (struct thread*,scalar_t__) ;
 struct dlil_threading_info* dlil_main_input_thread ;
 scalar_t__ dlil_verbose ;
 char* if_name (struct ifnet*) ;
 int ifnet_decr_iorefcnt (struct ifnet*) ;
 int ifnet_is_attached (struct ifnet*,int) ;
 int ifnet_purge (struct ifnet*) ;
 int ifnet_set_start_cycle (struct ifnet*,int *) ;
 int ifnet_start_delayed ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 struct ifnet* lo_ifp ;
 int msleep (struct thread**,int *,int,char*,struct timespec*) ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int stub1 (struct ifnet*) ;
 int thread_deallocate (struct thread*) ;
 int thread_set_thread_name (struct thread*,char*) ;
 int thread_terminate (struct thread*) ;

__attribute__((used)) static void
ifnet_start_thread_fn(void *v, wait_result_t w)
{
#pragma unused(w)
 struct ifnet *ifp = v;
 char ifname[IFNAMSIZ + 1];
 char thread_name[MAXTHREADNAMESIZE];
 struct timespec *ts = ((void*)0);
 struct ifclassq *ifq = &ifp->if_snd;
 struct timespec delay_start_ts;


 bzero(thread_name, sizeof(thread_name));
 (void) snprintf(thread_name, sizeof (thread_name),
     "ifnet_start_%s", ifp->if_xname);
 thread_set_thread_name(ifp->if_start_thread, thread_name);
 if (ifp == lo_ifp) {
  struct dlil_threading_info *inp = dlil_main_input_thread;
  struct thread *tp = current_thread();

  lck_mtx_lock(&inp->input_lck);
  if (inp->net_affinity) {
   u_int32_t tag = inp->tag;

   VERIFY(inp->wloop_thr == THREAD_NULL);
   VERIFY(inp->poll_thr == THREAD_NULL);
   inp->wloop_thr = tp;
   lck_mtx_unlock(&inp->input_lck);


   (void) dlil_affinity_set(tp, tag);
  } else {
   lck_mtx_unlock(&inp->input_lck);
  }
 }

 (void) snprintf(ifname, sizeof (ifname), "%s_starter", if_name(ifp));

 lck_mtx_lock_spin(&ifp->if_start_lock);

 for (;;) {
  if (ifp->if_start_thread != ((void*)0)) {
   (void) msleep(&ifp->if_start_thread,
       &ifp->if_start_lock,
       (PZERO - 1) | PSPIN, ifname, ts);
  }

  if (ifp->if_start_thread == THREAD_NULL) {
   ifnet_set_start_cycle(ifp, ((void*)0));
   lck_mtx_unlock(&ifp->if_start_lock);
   ifnet_purge(ifp);

   if (dlil_verbose) {
    printf("%s: starter thread terminated\n",
        if_name(ifp));
   }


   thread_deallocate(current_thread());

   thread_terminate(current_thread());

   return;
  }

  ifp->if_start_active = 1;

  for (;;) {
   u_int32_t req = ifp->if_start_req;
   if (!IFCQ_IS_EMPTY(ifq) &&
       (ifp->if_eflags & IFEF_ENQUEUE_MULTI) &&
       ifp->if_start_delayed == 0 &&
       IFCQ_LEN(ifq) < ifp->if_start_delay_qlen &&
       (ifp->if_eflags & IFEF_DELAY_START)) {
    ifp->if_start_delayed = 1;
    ifnet_start_delayed++;
    break;
   } else {
    ifp->if_start_delayed = 0;
   }
   lck_mtx_unlock(&ifp->if_start_lock);







   if (!ifnet_is_attached(ifp, 1)) {
    lck_mtx_lock_spin(&ifp->if_start_lock);
    break;
   }


   ((*ifp->if_start)(ifp));




   ifnet_decr_iorefcnt(ifp);

   lck_mtx_lock_spin(&ifp->if_start_lock);





   if (req == ifp->if_start_req ||
       (ifp->if_start_flags & IFSF_FLOW_CONTROLLED)) {
    break;
   }
  }

  ifp->if_start_req = 0;
  ifp->if_start_active = 0;







  ts = ((IFCQ_TBR_IS_ENABLED(ifq) && !IFCQ_IS_EMPTY(ifq)) ?
      &ifp->if_start_cycle : ((void*)0));

  if (ts == ((void*)0) && ifp->if_start_delayed == 1) {
   delay_start_ts.tv_sec = 0;
   delay_start_ts.tv_nsec = ifp->if_start_delay_timeout;
   ts = &delay_start_ts;
  }

  if (ts != ((void*)0) && ts->tv_sec == 0 && ts->tv_nsec == 0)
   ts = ((void*)0);
 }


}
