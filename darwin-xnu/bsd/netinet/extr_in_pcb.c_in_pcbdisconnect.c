
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int so_flags; int so_state; int so_state_change_cnt; } ;
struct TYPE_3__ {int s_addr; } ;
struct inpcb {TYPE_2__* inp_pcbinfo; scalar_t__ inp_fport; TYPE_1__ inp_faddr; struct socket* inp_socket; } ;
struct TYPE_4__ {int ipi_lock; } ;


 int INADDR_ANY ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ SOCK_PROTO (struct socket*) ;
 int SOF_MP_SUBFLOW ;
 int SS_NOFDREF ;
 int in_pcbdetach (struct inpcb*) ;
 int in_pcbrehash (struct inpcb*) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_exclusive (int ) ;
 int lck_rw_try_lock_exclusive (int ) ;
 scalar_t__ nstat_collect ;
 int nstat_pcb_cache (struct inpcb*) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;

void
in_pcbdisconnect(struct inpcb *inp)
{
 struct socket *so = inp->inp_socket;

 if (nstat_collect && SOCK_PROTO(so) == IPPROTO_UDP)
  nstat_pcb_cache(inp);

 inp->inp_faddr.s_addr = INADDR_ANY;
 inp->inp_fport = 0;






 if (!lck_rw_try_lock_exclusive(inp->inp_pcbinfo->ipi_lock)) {

  socket_unlock(so, 0);
  lck_rw_lock_exclusive(inp->inp_pcbinfo->ipi_lock);
  socket_lock(so, 0);
 }

 in_pcbrehash(inp);
 lck_rw_done(inp->inp_pcbinfo->ipi_lock);





 if (!(so->so_flags & SOF_MP_SUBFLOW) && (so->so_state & SS_NOFDREF))
  in_pcbdetach(inp);
}
