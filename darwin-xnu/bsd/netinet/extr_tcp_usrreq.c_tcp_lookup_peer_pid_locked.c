
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct socket {int so_state; scalar_t__ so_pcb; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct inpcb {int inp_vflag; TYPE_1__* inp_socket; struct in_addr inp_faddr; struct in_addr inp_laddr; struct in6_addr in6p_faddr; struct in6_addr in6p_laddr; int inp_fport; int inp_lport; } ;
typedef int pid_t ;
struct TYPE_2__ {int last_pid; } ;


 int EHOSTUNREACH ;
 int ENOTCONN ;
 int INP_IPV4 ;
 int INP_IPV6 ;
 int SS_ISCONNECTED ;
 int WNT_RELEASE ;
 struct inpcb* in6_pcblookup_hash (int *,struct in6_addr*,int ,struct in6_addr*,int ,int ,int *) ;
 int in_pcb_checkstate (struct inpcb*,int ,int ) ;
 struct inpcb* in_pcblookup_hash (int *,struct in_addr,int ,struct in_addr,int ,int ,int *) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int tcbinfo ;

__attribute__((used)) static int
tcp_lookup_peer_pid_locked(struct socket *so, pid_t *out_pid)
{
 int error = EHOSTUNREACH;
 *out_pid = -1;
 if ((so->so_state & SS_ISCONNECTED) == 0) return ENOTCONN;

 struct inpcb *inp = (struct inpcb*)so->so_pcb;
 uint16_t lport = inp->inp_lport;
 uint16_t fport = inp->inp_fport;
 struct inpcb *finp = ((void*)0);
 struct in6_addr laddr6, faddr6;
 struct in_addr laddr4, faddr4;

 if (inp->inp_vflag & INP_IPV6) {
  laddr6 = inp->in6p_laddr;
  faddr6 = inp->in6p_faddr;
 } else if (inp->inp_vflag & INP_IPV4) {
  laddr4 = inp->inp_laddr;
  faddr4 = inp->inp_faddr;
 }

 socket_unlock(so, 0);
 if (inp->inp_vflag & INP_IPV6) {
  finp = in6_pcblookup_hash(&tcbinfo, &laddr6, lport, &faddr6, fport, 0, ((void*)0));
 } else if (inp->inp_vflag & INP_IPV4) {
  finp = in_pcblookup_hash(&tcbinfo, laddr4, lport, faddr4, fport, 0, ((void*)0));
 }

 if (finp) {
  *out_pid = finp->inp_socket->last_pid;
  error = 0;
  in_pcb_checkstate(finp, WNT_RELEASE, 0);
 }
 socket_lock(so, 0);

 return error;
}
