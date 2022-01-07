
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;
typedef int u_int32_t ;
typedef int thread_name ;
struct mbuf {int dummy; } ;
struct ifnet {char* if_xname; int if_eflags; } ;
struct dlil_threading_info {scalar_t__ mode; int input_waiting; int input_lck; scalar_t__ wtot; int rcvq_pkts; int input_name; int input_thr; struct ifnet* ifp; } ;


 int DLIL_INPUT_RUNNING ;
 int DLIL_INPUT_TERMINATE ;
 int DLIL_INPUT_WAITING ;
 int DLIL_PROTO_REGISTER ;
 int DLIL_PROTO_WAITING ;
 int IFEF_RXPOLL ;
 scalar_t__ IFNET_MODEL_INPUT_POLL_OFF ;
 int MAXTHREADNAMESIZE ;
 int PSPIN ;
 int PZERO ;
 int VERIFY (int) ;
 struct mbuf* _getq_all (int *,int *,int *,int *) ;
 int bzero (char*,int) ;
 int dlil_input_packet_list_extended (int *,struct mbuf*,int ,scalar_t__) ;
 int dlil_input_stats_sync (struct ifnet*,struct dlil_threading_info*) ;
 struct dlil_threading_info* dlil_main_input_thread ;
 int dlil_terminate_input_thread (struct dlil_threading_info*) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int mbuf_freem_list (struct mbuf*) ;
 int msleep (int*,int *,int,int ,int *) ;
 int net_rxpoll ;
 int qlen (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int thread_set_thread_name (int ,char*) ;

__attribute__((used)) static void
dlil_input_thread_func(void *v, wait_result_t w)
{
#pragma unused(w)
 char thread_name[MAXTHREADNAMESIZE];
 struct dlil_threading_info *inp = v;
 struct ifnet *ifp = inp->ifp;


 bzero(thread_name, sizeof(thread_name));
 snprintf(thread_name, sizeof(thread_name), "dlil_input_%s", ifp->if_xname);
 thread_set_thread_name(inp->input_thr, thread_name);

 VERIFY(inp != dlil_main_input_thread);
 VERIFY(ifp != ((void*)0));
 VERIFY(!(ifp->if_eflags & IFEF_RXPOLL) || !net_rxpoll);
 VERIFY(inp->mode == IFNET_MODEL_INPUT_POLL_OFF);

 while (1) {
  struct mbuf *m = ((void*)0);
  u_int32_t m_cnt;

  lck_mtx_lock_spin(&inp->input_lck);


  while (!(inp->input_waiting & ~DLIL_INPUT_RUNNING)) {
   inp->input_waiting &= ~DLIL_INPUT_RUNNING;
   (void) msleep(&inp->input_waiting, &inp->input_lck,
       (PZERO - 1) | PSPIN, inp->input_name, ((void*)0));
  }

  inp->input_waiting |= DLIL_INPUT_RUNNING;
  inp->input_waiting &= ~DLIL_INPUT_WAITING;
  VERIFY(!(inp->input_waiting &
      (DLIL_PROTO_WAITING|DLIL_PROTO_REGISTER)));


  m_cnt = qlen(&inp->rcvq_pkts);
  m = _getq_all(&inp->rcvq_pkts, ((void*)0), ((void*)0), ((void*)0));

  if (inp->input_waiting & DLIL_INPUT_TERMINATE) {
   lck_mtx_unlock(&inp->input_lck);


   if (m != ((void*)0))
    mbuf_freem_list(m);

   dlil_terminate_input_thread(inp);

   return;
  }

  inp->wtot = 0;

   dlil_input_stats_sync(ifp, inp);

  lck_mtx_unlock(&inp->input_lck);






  if (m != ((void*)0))
   dlil_input_packet_list_extended(((void*)0), m,
       m_cnt, inp->mode);
 }


 VERIFY(0);
}
