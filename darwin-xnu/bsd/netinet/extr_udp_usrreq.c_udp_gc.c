
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {scalar_t__ so_usecount; } ;
struct TYPE_5__ {int intimer_fast; } ;
struct inpcbinfo {int ipi_lock; TYPE_2__ ipi_gc_req; } ;
struct TYPE_4__ {struct inpcb* le_next; } ;
struct inpcb {scalar_t__ inp_wantcnt; scalar_t__ inp_state; struct socket* inp_socket; TYPE_1__ inp_list; } ;
struct TYPE_6__ {struct inpcb* lh_first; } ;


 scalar_t__ FALSE ;
 scalar_t__ INPCB_STATE_DEAD ;
 int PF_INET6 ;
 scalar_t__ SOCK_CHECK_DOM (struct socket*,int ) ;
 scalar_t__ TRUE ;
 scalar_t__ WNT_STOPUSING ;
 int atomic_add_32 (int *,int) ;
 int in6_pcbdetach (struct inpcb*) ;
 int in_pcbdetach (struct inpcb*) ;
 int in_pcbdispose (struct inpcb*) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_exclusive (int ) ;
 scalar_t__ lck_rw_try_lock_exclusive (int ) ;
 int socket_try_lock (struct socket*) ;
 int socket_unlock (struct socket*,int ) ;
 TYPE_3__ udb ;
 scalar_t__ udp_gc_done ;

__attribute__((used)) static void
udp_gc(struct inpcbinfo *ipi)
{
 struct inpcb *inp, *inpnxt;
 struct socket *so;

 if (lck_rw_try_lock_exclusive(ipi->ipi_lock) == FALSE) {
  if (udp_gc_done == TRUE) {
   udp_gc_done = FALSE;

   atomic_add_32(&ipi->ipi_gc_req.intimer_fast, 1);
   return;
  }
  lck_rw_lock_exclusive(ipi->ipi_lock);
 }

 udp_gc_done = TRUE;

 for (inp = udb.lh_first; inp != ((void*)0); inp = inpnxt) {
  inpnxt = inp->inp_list.le_next;







  if (inp->inp_wantcnt != WNT_STOPUSING)
   continue;





  if (!socket_try_lock(inp->inp_socket)) {
   atomic_add_32(&ipi->ipi_gc_req.intimer_fast, 1);
   continue;
  }




  so = inp->inp_socket;
  if (so->so_usecount == 0) {
   if (inp->inp_state != INPCB_STATE_DEAD) {





     in_pcbdetach(inp);
   }
   in_pcbdispose(inp);
  } else {
   socket_unlock(so, 0);
   atomic_add_32(&ipi->ipi_gc_req.intimer_fast, 1);
  }
 }
 lck_rw_done(ipi->ipi_lock);
}
