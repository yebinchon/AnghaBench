
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int so_flags1; TYPE_1__* so_proto; int so_state_change_cnt; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; int sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct in6_addr {int dummy; } ;
struct inpcb {scalar_t__ inp_lport; scalar_t__ inp_fport; TYPE_3__* inp_pcbinfo; int in6p_faddr; int in6p_flags; struct ifnet* in6p_last_outifp; struct in6_addr in6p_laddr; struct socket* inp_socket; } ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {int ipi_lock; } ;
struct TYPE_5__ {int nas_socket_inet_dgram_dns; } ;
struct TYPE_4__ {scalar_t__ pr_protocol; } ;


 int EADDRINUSE ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (struct in6_addr*) ;
 int INC_ATOMIC_INT64_LIM (int ) ;
 int INP_IN6ADDR_ANY ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ SOCK_PROTO (struct socket*) ;
 int SOF1_DNS_COUNTED ;
 int SO_FILT_HINT_IFDENIED ;
 int SO_FILT_HINT_LOCKED ;
 int WNT_RELEASE ;
 scalar_t__ htons (int) ;
 int ifnet_release (struct ifnet*) ;
 int in6_pcbbind (struct inpcb*,int *,struct proc*) ;
 int in6_pcbladdr (struct inpcb*,struct sockaddr*,struct in6_addr*,struct ifnet**) ;
 struct inpcb* in6_pcblookup_hash (TYPE_3__*,int *,scalar_t__,struct in6_addr*,scalar_t__,int ,int *) ;
 int in_pcb_checkstate (struct inpcb*,int ,int) ;
 int in_pcbrehash (struct inpcb*) ;
 scalar_t__ inp_restricted_send (struct inpcb*,struct ifnet*) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_exclusive (int ) ;
 int lck_rw_try_lock_exclusive (int ) ;
 TYPE_2__ net_api_stats ;
 scalar_t__ nstat_collect ;
 int nstat_pcb_invalidate_cache (struct inpcb*) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int soevent (struct socket*,int) ;

int
in6_pcbconnect(struct inpcb *inp, struct sockaddr *nam, struct proc *p)
{
 struct in6_addr addr6;
 struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)(void *)nam;
 struct inpcb *pcb;
 int error = 0;
 struct ifnet *outif = ((void*)0);
 struct socket *so = inp->inp_socket;






 if (so->so_proto->pr_protocol == IPPROTO_UDP &&
     sin6->sin6_port == htons(53) && !(so->so_flags1 & SOF1_DNS_COUNTED)) {
      so->so_flags1 |= SOF1_DNS_COUNTED;
  INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_inet_dgram_dns);
 }
 if ((error = in6_pcbladdr(inp, nam, &addr6, &outif)) != 0) {
  if (outif != ((void*)0) && inp_restricted_send(inp, outif))
   soevent(so,
       (SO_FILT_HINT_LOCKED | SO_FILT_HINT_IFDENIED));
  goto done;
 }
 socket_unlock(so, 0);
 pcb = in6_pcblookup_hash(inp->inp_pcbinfo, &sin6->sin6_addr,
     sin6->sin6_port, IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_laddr) ?
     &addr6 : &inp->in6p_laddr, inp->inp_lport, 0, ((void*)0));
 socket_lock(so, 0);
 if (pcb != ((void*)0)) {
  in_pcb_checkstate(pcb, WNT_RELEASE, pcb == inp ? 1 : 0);
  error = EADDRINUSE;
  goto done;
 }
 if (IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_laddr)) {
  if (inp->inp_lport == 0) {
   error = in6_pcbbind(inp, ((void*)0), p);
   if (error)
    goto done;
  }
  inp->in6p_laddr = addr6;
  inp->in6p_last_outifp = outif;
  inp->in6p_flags |= INP_IN6ADDR_ANY;
 }
 if (!lck_rw_try_lock_exclusive(inp->inp_pcbinfo->ipi_lock)) {

  socket_unlock(so, 0);
  lck_rw_lock_exclusive(inp->inp_pcbinfo->ipi_lock);
  socket_lock(so, 0);
 }
 inp->in6p_faddr = sin6->sin6_addr;
 inp->inp_fport = sin6->sin6_port;
 if (nstat_collect && SOCK_PROTO(so) == IPPROTO_UDP)
  nstat_pcb_invalidate_cache(inp);
 in_pcbrehash(inp);
 lck_rw_done(inp->inp_pcbinfo->ipi_lock);

done:
 if (outif != ((void*)0))
  ifnet_release(outif);

 return (error);
}
