
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef scalar_t__ u_short ;
struct socket {int so_options; int so_flags; int so_cred; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; void* sin6_addr; scalar_t__ sin6_scope_id; scalar_t__ sin6_flowinfo; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_len; scalar_t__ sa_family; } ;
struct proc {int dummy; } ;
struct inpcbinfo {int ipi_lock; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct inpcb {int inp_flags; scalar_t__ inp_state; struct ifnet* in6p_last_outifp; scalar_t__ inp_lport; void* in6p_laddr; struct socket* inp_socket; TYPE_1__ inp_laddr; struct inpcbinfo* inp_pcbinfo; } ;
struct in6_ifaddr {int ia6_flags; } ;
struct ifnet {int dummy; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;
typedef int sin6 ;
typedef int kauth_cred_t ;


 scalar_t__ AF_INET6 ;
 int EACCES ;
 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 int EAGAIN ;
 int ECONNABORTED ;
 int EINVAL ;
 int IFA_LOCK_SPIN (struct ifaddr*) ;
 int IFA_REMREF (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int IN6P_IPV6_V6ONLY ;
 int IN6_IFF_ANYCAST ;
 int IN6_IFF_CLAT46 ;
 int IN6_IFF_DETACHED ;
 int IN6_IFF_NOTREADY ;
 scalar_t__ IN6_IS_ADDR_MULTICAST (void**) ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (void**) ;
 scalar_t__ INADDR_ANY ;
 scalar_t__ INPCB_STATE_DEAD ;
 int INPLOOKUP_WILDCARD ;
 scalar_t__ IPV6PORT_RESERVED ;
 int PRIV_NETINET_RESERVEDPORT ;
 int SA (struct sockaddr_in6*) ;
 struct sockaddr_in6* SIN6 (struct sockaddr*) ;
 scalar_t__ SOCK_DOM (struct socket*) ;
 int SOF_REUSESHAREUID ;
 int SO_REUSEADDR ;
 int SO_REUSEPORT ;
 int bzero (struct sockaddr_in6*,int) ;
 struct ifaddr* ifa_ifwithaddr (int ) ;
 scalar_t__ in6_embedscope (void**,struct sockaddr_in6*,struct inpcb*,int *,int *) ;
 int in6_ifaddrs ;
 struct inpcb* in6_pcblookup_local_and_cleanup (struct inpcbinfo*,void**,scalar_t__,int) ;
 int in6_pcbsetport (void**,struct inpcb*,struct proc*,int) ;
 int in6_sin6_2_sin (struct sockaddr_in*,struct sockaddr_in6*) ;
 void* in6addr_any ;
 scalar_t__ in_pcbinshash (struct inpcb*,int) ;
 struct inpcb* in_pcblookup_local_and_cleanup (struct inpcbinfo*,int ,scalar_t__,int) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int kauth_cred_proc_ref (struct proc*) ;
 int kauth_cred_unref (int *) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_exclusive (int ) ;
 scalar_t__ ntohs (scalar_t__) ;
 int priv_check_cred (int ,int ,int ) ;
 int sflt_notify (struct socket*,int ,int *) ;
 int sock_evt_bound ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;

int
in6_pcbbind(struct inpcb *inp, struct sockaddr *nam, struct proc *p)
{
 struct socket *so = inp->inp_socket;
 struct inpcbinfo *pcbinfo = inp->inp_pcbinfo;
 u_short lport = 0;
 int wild = 0, reuseport = (so->so_options & SO_REUSEPORT);
 struct ifnet *outif = ((void*)0);
 struct sockaddr_in6 sin6;

 int error;
 kauth_cred_t cred;


 if (!in6_ifaddrs)
  return (EADDRNOTAVAIL);
 if (!(so->so_options & (SO_REUSEADDR|SO_REUSEPORT)))
  wild = 1;

 socket_unlock(so, 0);
 lck_rw_lock_exclusive(pcbinfo->ipi_lock);
 if (inp->inp_lport || !IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_laddr)) {

  lck_rw_done(pcbinfo->ipi_lock);
  socket_lock(so, 0);
  return (EINVAL);
 }

 bzero(&sin6, sizeof (sin6));
 if (nam != ((void*)0)) {
  if (nam->sa_len != sizeof (struct sockaddr_in6)) {
   lck_rw_done(pcbinfo->ipi_lock);
   socket_lock(so, 0);
   return (EINVAL);
  }



  if (nam->sa_family != AF_INET6) {
   lck_rw_done(pcbinfo->ipi_lock);
   socket_lock(so, 0);
   return (EAFNOSUPPORT);
  }
  lport = SIN6(nam)->sin6_port;

  *(&sin6) = *SIN6(nam);


  if (in6_embedscope(&sin6.sin6_addr, &sin6, inp, ((void*)0),
      ((void*)0)) != 0) {
   lck_rw_done(pcbinfo->ipi_lock);
   socket_lock(so, 0);
   return (EINVAL);
  }


                sin6.sin6_flowinfo = 0;
                sin6.sin6_scope_id = 0;
  sin6.sin6_port = 0;

  if (IN6_IS_ADDR_MULTICAST(&sin6.sin6_addr)) {







   if (so->so_options & SO_REUSEADDR)
    reuseport = SO_REUSEADDR|SO_REUSEPORT;
  } else if (!IN6_IS_ADDR_UNSPECIFIED(&sin6.sin6_addr)) {
   struct ifaddr *ifa;

   ifa = ifa_ifwithaddr(SA(&sin6));
   if (ifa == ((void*)0)) {
    lck_rw_done(pcbinfo->ipi_lock);
    socket_lock(so, 0);
    return (EADDRNOTAVAIL);
   } else {







    IFA_LOCK_SPIN(ifa);
    if (((struct in6_ifaddr *)ifa)->ia6_flags &
        (IN6_IFF_ANYCAST | IN6_IFF_NOTREADY|
        IN6_IFF_DETACHED | IN6_IFF_CLAT46)) {
     IFA_UNLOCK(ifa);
     IFA_REMREF(ifa);
     lck_rw_done(pcbinfo->ipi_lock);
     socket_lock(so, 0);
     return (EADDRNOTAVAIL);
    }
    outif = ifa->ifa_ifp;
    IFA_UNLOCK(ifa);
    IFA_REMREF(ifa);
   }
  }
  if (lport != 0) {
   struct inpcb *t;
   uid_t u;


   if (ntohs(lport) < IPV6PORT_RESERVED &&
    !IN6_IS_ADDR_UNSPECIFIED(&sin6.sin6_addr)) {
    cred = kauth_cred_proc_ref(p);
    error = priv_check_cred(cred,
        PRIV_NETINET_RESERVEDPORT, 0);
    kauth_cred_unref(&cred);
    if (error != 0) {
     lck_rw_done(pcbinfo->ipi_lock);
     socket_lock(so, 0);
     return (EACCES);
    }
   }

   if (!IN6_IS_ADDR_MULTICAST(&sin6.sin6_addr) &&
       (u = kauth_cred_getuid(so->so_cred)) != 0) {
    t = in6_pcblookup_local_and_cleanup(pcbinfo,
        &sin6.sin6_addr, lport,
        INPLOOKUP_WILDCARD);
    if (t != ((void*)0) && (!IN6_IS_ADDR_UNSPECIFIED(
        &sin6.sin6_addr) ||
        !IN6_IS_ADDR_UNSPECIFIED(&t->in6p_laddr) ||
        !(t->inp_socket->so_options &
        SO_REUSEPORT)) && (u != kauth_cred_getuid(
        t->inp_socket->so_cred)) &&
        !(t->inp_socket->so_flags &
        SOF_REUSESHAREUID)) {
     lck_rw_done(pcbinfo->ipi_lock);
     socket_lock(so, 0);
     return (EADDRINUSE);
    }
    if (!(inp->inp_flags & IN6P_IPV6_V6ONLY) &&
        IN6_IS_ADDR_UNSPECIFIED(&sin6.sin6_addr)) {
     struct sockaddr_in sin;

     in6_sin6_2_sin(&sin, &sin6);
     t = in_pcblookup_local_and_cleanup(
         pcbinfo, sin.sin_addr, lport,
         INPLOOKUP_WILDCARD);
     if (t != ((void*)0) &&
         !(t->inp_socket->so_options &
         SO_REUSEPORT) &&
         (kauth_cred_getuid(so->so_cred) !=
         kauth_cred_getuid(t->inp_socket->
         so_cred)) && (t->inp_laddr.s_addr !=
         INADDR_ANY || SOCK_DOM(so) ==
         SOCK_DOM(t->inp_socket))) {
      lck_rw_done(pcbinfo->ipi_lock);
      socket_lock(so, 0);
      return (EADDRINUSE);
     }
    }
   }
   t = in6_pcblookup_local_and_cleanup(pcbinfo,
       &sin6.sin6_addr, lport, wild);
   if (t != ((void*)0) &&
       (reuseport & t->inp_socket->so_options) == 0) {
    lck_rw_done(pcbinfo->ipi_lock);
    socket_lock(so, 0);
    return (EADDRINUSE);
   }
   if (!(inp->inp_flags & IN6P_IPV6_V6ONLY) &&
       IN6_IS_ADDR_UNSPECIFIED(&sin6.sin6_addr)) {
    struct sockaddr_in sin;

    in6_sin6_2_sin(&sin, &sin6);
    t = in_pcblookup_local_and_cleanup(pcbinfo,
        sin.sin_addr, lport, wild);
    if (t != ((void*)0) && (reuseport &
        t->inp_socket->so_options) == 0 &&
        (t->inp_laddr.s_addr != INADDR_ANY ||
        SOCK_DOM(so) == SOCK_DOM(t->inp_socket))) {
     lck_rw_done(pcbinfo->ipi_lock);
     socket_lock(so, 0);
     return (EADDRINUSE);
    }
   }
  }
 }

 socket_lock(so, 0);





 if (inp->inp_state == INPCB_STATE_DEAD) {
  lck_rw_done(pcbinfo->ipi_lock);
  return (ECONNABORTED);
 }


 if (inp->inp_lport || !IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_laddr)) {
  lck_rw_done(pcbinfo->ipi_lock);
  return (EINVAL);
 }

 if (!IN6_IS_ADDR_UNSPECIFIED(&sin6.sin6_addr)) {
  inp->in6p_laddr = sin6.sin6_addr;
  inp->in6p_last_outifp = outif;
 }

 if (lport == 0) {
  int e;
  if ((e = in6_pcbsetport(&inp->in6p_laddr, inp, p, 1)) != 0) {

   inp->in6p_laddr = in6addr_any;
   inp->in6p_last_outifp = ((void*)0);
   lck_rw_done(pcbinfo->ipi_lock);
   return (e);
  }
 } else {
  inp->inp_lport = lport;
  if (in_pcbinshash(inp, 1) != 0) {
   inp->in6p_laddr = in6addr_any;
   inp->inp_lport = 0;
   inp->in6p_last_outifp = ((void*)0);
   lck_rw_done(pcbinfo->ipi_lock);
   return (EAGAIN);
  }
 }
 lck_rw_done(pcbinfo->ipi_lock);
 sflt_notify(so, sock_evt_bound, ((void*)0));
 return (0);
}
