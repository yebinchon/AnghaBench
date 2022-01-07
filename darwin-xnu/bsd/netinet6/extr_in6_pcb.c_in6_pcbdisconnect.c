
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_flags; int so_state; int so_state_change_cnt; } ;
struct inpcb {TYPE_1__* inp_pcbinfo; int inp_flow; scalar_t__ inp_fport; int in6p_faddr; struct socket* inp_socket; } ;
typedef int caddr_t ;
struct TYPE_2__ {int ipi_lock; } ;


 scalar_t__ IPPROTO_UDP ;
 int IPV6_FLOWLABEL_MASK ;
 scalar_t__ SOCK_PROTO (struct socket*) ;
 int SOF_MP_SUBFLOW ;
 int SS_NOFDREF ;
 int bzero (int ,int) ;
 int in6_pcbdetach (struct inpcb*) ;
 int in_pcbrehash (struct inpcb*) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_exclusive (int ) ;
 int lck_rw_try_lock_exclusive (int ) ;
 scalar_t__ nstat_collect ;
 int nstat_pcb_cache (struct inpcb*) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;

void
in6_pcbdisconnect(struct inpcb *inp)
{
 struct socket *so = inp->inp_socket;






 if (!lck_rw_try_lock_exclusive(inp->inp_pcbinfo->ipi_lock)) {

  socket_unlock(so, 0);
  lck_rw_lock_exclusive(inp->inp_pcbinfo->ipi_lock);
  socket_lock(so, 0);
 }
 if (nstat_collect && SOCK_PROTO(so) == IPPROTO_UDP)
  nstat_pcb_cache(inp);
 bzero((caddr_t)&inp->in6p_faddr, sizeof (inp->in6p_faddr));
 inp->inp_fport = 0;

 inp->inp_flow &= ~IPV6_FLOWLABEL_MASK;
 in_pcbrehash(inp);
 lck_rw_done(inp->inp_pcbinfo->ipi_lock);





 if (!(so->so_flags & SOF_MP_SUBFLOW) && (so->so_state & SS_NOFDREF))
  in6_pcbdetach(inp);
}
