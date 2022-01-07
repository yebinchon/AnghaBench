
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {TYPE_4__* t_inpcb; } ;
struct inpcbinfo {int ipi_lock; } ;
struct TYPE_6__ {TYPE_1__* inp_socket; } ;
struct TYPE_5__ {int so_options; } ;


 int INPCB_TIMER_LAZY ;
 int SO_NOWAKEFROMSLEEP ;
 int add_to_time_wait_locked (struct tcpcb*,int ) ;
 int inpcb_gc_sched (struct inpcbinfo*,int ) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_exclusive (int ) ;
 int lck_rw_try_lock_exclusive (int ) ;
 int nstat_pcb_detach (TYPE_4__*) ;
 int socket_lock (TYPE_1__*,int ) ;
 int socket_post_kev_msg_closed (TYPE_1__*) ;
 int socket_unlock (TYPE_1__*,int ) ;
 struct inpcbinfo tcbinfo ;

void
add_to_time_wait(struct tcpcb *tp, uint32_t delay)
{
 struct inpcbinfo *pcbinfo = &tcbinfo;
 if (tp->t_inpcb->inp_socket->so_options & SO_NOWAKEFROMSLEEP)
  socket_post_kev_msg_closed(tp->t_inpcb->inp_socket);


 nstat_pcb_detach(tp->t_inpcb);

 if (!lck_rw_try_lock_exclusive(pcbinfo->ipi_lock)) {
  socket_unlock(tp->t_inpcb->inp_socket, 0);
  lck_rw_lock_exclusive(pcbinfo->ipi_lock);
  socket_lock(tp->t_inpcb->inp_socket, 0);
 }
 add_to_time_wait_locked(tp, delay);
 lck_rw_done(pcbinfo->ipi_lock);

 inpcb_gc_sched(pcbinfo, INPCB_TIMER_LAZY);
}
