
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct socket {int so_options; } ;
struct proc {int dummy; } ;
struct inpcbinfo {scalar_t__ ipi_lasthi; scalar_t__ ipi_lastlow; scalar_t__ ipi_lastport; int ipi_lock; } ;
struct inpcb {int inp_flags2; int inp_flags; scalar_t__ inp_lport; int * in6p_last_outifp; void* in6p_laddr; struct socket* inp_socket; struct inpcbinfo* inp_pcbinfo; } ;
struct in6_addr {int dummy; } ;
typedef int kauth_cred_t ;
typedef scalar_t__ boolean_t ;


 int EAGAIN ;
 scalar_t__ FALSE ;
 int INP2_INHASHLIST ;
 int INPLOOKUP_WILDCARD ;
 int INP_ANONPORT ;
 int INP_HIGHPORT ;
 int INP_LOWPORT ;
 int PRIV_NETINET_RESERVEDPORT ;
 int SO_REUSEADDR ;
 int SO_REUSEPORT ;
 scalar_t__ TRUE ;
 int VERIFY (int) ;
 scalar_t__ htons (scalar_t__) ;
 int * in6_pcblookup_local (struct inpcbinfo*,void**,scalar_t__,int) ;
 void* in6addr_any ;
 scalar_t__ in_pcbinshash (struct inpcb*,int) ;
 scalar_t__ ipport_firstauto ;
 scalar_t__ ipport_hifirstauto ;
 scalar_t__ ipport_hilastauto ;
 scalar_t__ ipport_lastauto ;
 scalar_t__ ipport_lowfirstauto ;
 scalar_t__ ipport_lowlastauto ;
 int kauth_cred_proc_ref (struct proc*) ;
 int kauth_cred_unref (int *) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_exclusive (int ) ;
 int lck_rw_try_lock_exclusive (int ) ;
 int priv_check_cred (int ,int ,int ) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;

int
in6_pcbsetport(struct in6_addr *laddr, struct inpcb *inp, struct proc *p,
    int locked)
{
 struct socket *so = inp->inp_socket;
 u_int16_t lport = 0, first, last, *lastport;
 int count, error = 0, wild = 0;
 boolean_t counting_down;
 bool found;
 struct inpcbinfo *pcbinfo = inp->inp_pcbinfo;
 kauth_cred_t cred;
#pragma unused(laddr)
 if (!locked) {
  if (!lck_rw_try_lock_exclusive(pcbinfo->ipi_lock)) {
   socket_unlock(inp->inp_socket, 0);
   lck_rw_lock_exclusive(pcbinfo->ipi_lock);
   socket_lock(inp->inp_socket, 0);
  }





  if (inp->inp_lport != 0) {
   VERIFY(inp->inp_flags2 & INP2_INHASHLIST);
   lck_rw_done(pcbinfo->ipi_lock);





   return (0);
  }
 }


 if ((so->so_options & (SO_REUSEADDR|SO_REUSEPORT)) == 0)
  wild = INPLOOKUP_WILDCARD;

 if (inp->inp_flags & INP_HIGHPORT) {
  first = ipport_hifirstauto;
  last = ipport_hilastauto;
  lastport = &pcbinfo->ipi_lasthi;
 } else if (inp->inp_flags & INP_LOWPORT) {
  cred = kauth_cred_proc_ref(p);
  error = priv_check_cred(cred, PRIV_NETINET_RESERVEDPORT, 0);
  kauth_cred_unref(&cred);
  if (error != 0) {
   if (!locked)
    lck_rw_done(pcbinfo->ipi_lock);
   return (error);
  }
  first = ipport_lowfirstauto;
  last = ipport_lowlastauto;
  lastport = &pcbinfo->ipi_lastlow;
 } else {
  first = ipport_firstauto;
  last = ipport_lastauto;
  lastport = &pcbinfo->ipi_lastport;
 }




 found = 0;
 if (first > last) {

  count = first - last;
  counting_down = TRUE;
 } else {

  count = last - first;
  counting_down = FALSE;
 }
 do {
  if (count-- < 0) {




   inp->in6p_laddr = in6addr_any;
   inp->in6p_last_outifp = ((void*)0);
   if (!locked)
    lck_rw_done(pcbinfo->ipi_lock);
   return (EAGAIN);
  }
  if (counting_down) {
   --*lastport;
   if (*lastport > first || *lastport < last) {
    *lastport = first;
   }
  } else {
   ++*lastport;
   if (*lastport < first || *lastport > last)
    *lastport = first;
  }
  lport = htons(*lastport);
  found = (in6_pcblookup_local(pcbinfo, &inp->in6p_laddr,
          lport, wild) == ((void*)0));
 } while (!found);

 inp->inp_lport = lport;
 inp->inp_flags |= INP_ANONPORT;

 if (in_pcbinshash(inp, 1) != 0) {
  inp->in6p_laddr = in6addr_any;
  inp->in6p_last_outifp = ((void*)0);

  inp->inp_lport = 0;
  inp->inp_flags &= ~INP_ANONPORT;
  if (!locked)
   lck_rw_done(pcbinfo->ipi_lock);
  return (EAGAIN);
 }

 if (!locked)
  lck_rw_done(pcbinfo->ipi_lock);
 return (0);
}
