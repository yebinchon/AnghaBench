
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;
typedef int u_int32_t ;
struct mbuf {int dummy; } ;
struct dlil_threading_info {scalar_t__ mode; int input_waiting; int input_lck; scalar_t__ wtot; int rcvq_pkts; int input_name; int * ifp; } ;
struct dlil_main_threading_info {int lo_rcvq_pkts; } ;
typedef int boolean_t ;


 int DLIL_INPUT_RUNNING ;
 int DLIL_INPUT_TERMINATE ;
 int DLIL_INPUT_WAITING ;
 int DLIL_PROTO_REGISTER ;
 int DLIL_PROTO_WAITING ;
 scalar_t__ IFNET_MODEL_INPUT_POLL_OFF ;
 int PSPIN ;
 int PZERO ;
 int VERIFY (int) ;
 struct mbuf* _getq_all (int *,int *,int *,int *) ;
 int dlil_input_packet_list_extended (int *,struct mbuf*,int ,scalar_t__) ;
 struct dlil_threading_info* dlil_main_input_thread ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int * lo_ifp ;
 int msleep (int*,int *,int,int ,int *) ;
 int proto_input_run () ;
 int qlen (int *) ;

__attribute__((used)) __attribute__((noreturn))
static void
dlil_main_input_thread_func(void *v, wait_result_t w)
{
#pragma unused(w)
 struct dlil_main_threading_info *inpm = v;
 struct dlil_threading_info *inp = v;

 VERIFY(inp == dlil_main_input_thread);
 VERIFY(inp->ifp == ((void*)0));
 VERIFY(inp->mode == IFNET_MODEL_INPUT_POLL_OFF);

 while (1) {
  struct mbuf *m = ((void*)0), *m_loop = ((void*)0);
  u_int32_t m_cnt, m_cnt_loop;
  boolean_t proto_req;

  lck_mtx_lock_spin(&inp->input_lck);


  while (!(inp->input_waiting & ~DLIL_INPUT_RUNNING)) {
   inp->input_waiting &= ~DLIL_INPUT_RUNNING;
   (void) msleep(&inp->input_waiting, &inp->input_lck,
       (PZERO - 1) | PSPIN, inp->input_name, ((void*)0));
  }

  inp->input_waiting |= DLIL_INPUT_RUNNING;
  inp->input_waiting &= ~DLIL_INPUT_WAITING;


  VERIFY(!(inp->input_waiting & DLIL_INPUT_TERMINATE));

  proto_req = (inp->input_waiting &
      (DLIL_PROTO_WAITING | DLIL_PROTO_REGISTER));


  m_cnt = qlen(&inp->rcvq_pkts);
  m = _getq_all(&inp->rcvq_pkts, ((void*)0), ((void*)0), ((void*)0));


  m_cnt_loop = qlen(&inpm->lo_rcvq_pkts);
  m_loop = _getq_all(&inpm->lo_rcvq_pkts, ((void*)0), ((void*)0), ((void*)0));

  inp->wtot = 0;

  lck_mtx_unlock(&inp->input_lck);






  if (m_loop != ((void*)0))
   dlil_input_packet_list_extended(lo_ifp, m_loop,
       m_cnt_loop, inp->mode);

  if (m != ((void*)0))
   dlil_input_packet_list_extended(((void*)0), m,
       m_cnt, inp->mode);

  if (proto_req)
   proto_input_run();
 }


 VERIFY(0);
}
