
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct socket {scalar_t__ so_usecount; } ;
struct inpcbinfo {int dummy; } ;
struct inpcb {scalar_t__ inp_wantcnt; scalar_t__ inp_state; struct socket* inp_socket; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ INPCB_STATE_DEAD ;
 scalar_t__ WNT_STOPUSING ;
 int in6_pcbdetach (struct inpcb*) ;
 struct inpcb* in6_pcblookup_local (struct inpcbinfo*,struct in6_addr*,int ,int) ;
 int in_pcbdispose (struct inpcb*) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;

__attribute__((used)) static struct inpcb *
in6_pcblookup_local_and_cleanup(struct inpcbinfo *pcbinfo,
    struct in6_addr *laddr, u_int lport_arg, int wild_okay)
{
 struct inpcb *inp;


 inp = in6_pcblookup_local(pcbinfo, laddr, lport_arg, wild_okay);


 if (inp != ((void*)0) && inp->inp_wantcnt == WNT_STOPUSING) {
  struct socket *so = inp->inp_socket;

  socket_lock(so, 0);

  if (so->so_usecount == 0) {
   if (inp->inp_state != INPCB_STATE_DEAD)
    in6_pcbdetach(inp);
   in_pcbdispose(inp);
   inp = ((void*)0);
  } else {
   socket_unlock(so, 0);
  }
 }

 return (inp);
}
