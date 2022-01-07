
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {unsigned int ip6oa_boundif; int ip6oa_flags; int sin6_len; struct in6_addr sin6_addr; int sin6_family; int ip6oa_netsvctype; int ip6oa_sotc; } ;
struct sockaddr {int dummy; } ;
struct route_in6 {int dummy; } ;
struct ip6_pktopts {scalar_t__ ip6po_prefer_tempaddr; struct in6_pktinfo* ip6po_pktinfo; } ;
struct ip6_out_args {unsigned int ip6oa_boundif; int ip6oa_flags; int sin6_len; struct in6_addr sin6_addr; int sin6_family; int ip6oa_netsvctype; int ip6oa_sotc; } ;
struct ip6_moptions {int dummy; } ;
struct inpcb {struct in6_addr in6p_laddr; struct ip6_moptions* in6p_moptions; } ;
struct in6_pktinfo {struct in6_addr ipi6_addr; } ;
struct TYPE_6__ {struct ifnet* ifa_ifp; } ;
struct in6_ifaddr {int ia6_flags; TYPE_2__ ia_ifa; int ia_addr; } ;
struct ifnet {int dummy; } ;
typedef int srcsock ;
typedef int ip6oa ;
typedef int boolean_t ;
struct TYPE_5__ {struct in6_addr sin6_addr; } ;


 int AF_INET6 ;
 int EADDRNOTAVAIL ;
 int EHOSTUNREACH ;
 int FALSE ;
 int IFA_LOCK_SPIN (TYPE_2__*) ;
 int IFA_REMREF (TYPE_2__*) ;
 int IFA_UNLOCK (TYPE_2__*) ;
 unsigned int IFSCOPE_NONE ;
 int IN6_IFF_ANYCAST ;
 int IN6_IFF_CLAT46 ;
 int IN6_IFF_NOTREADY ;
 int IN6_IS_ADDR_UNSPECIFIED (struct in6_addr*) ;
 scalar_t__ INP_AWDL_UNRESTRICTED (struct inpcb*) ;
 scalar_t__ INP_INTCOPROC_ALLOWED (struct inpcb*) ;
 scalar_t__ INP_NO_CELLULAR (struct inpcb*) ;
 scalar_t__ INP_NO_EXPENSIVE (struct inpcb*) ;
 int IP6OAF_AWDL_UNRESTRICTED ;
 int IP6OAF_BOUND_IF ;
 int IP6OAF_INTCOPROC_ALLOWED ;
 int IP6OAF_NO_CELLULAR ;
 int IP6OAF_NO_EXPENSIVE ;
 int IP6OAF_SELECT_SRCIF ;
 scalar_t__ IP6PO_TEMPADDR_NOTPREFER ;
 scalar_t__ IP6PO_TEMPADDR_SYSTEM ;
 int IPV6_SRCSEL_HINT_PREFER_TMPADDR ;
 int SASEL_DO_DBG (struct inpcb*) ;
 int SO_TC_UNSPEC ;
 int VERIFY (int ) ;
 int _NET_SERVICE_TYPE_UNSPEC ;
 int bzero (struct sockaddr_in6*,int) ;
 scalar_t__ ifa_ifwithaddr (struct sockaddr*) ;
 int ifnet_release (struct ifnet*) ;
 int in6_selectif (struct sockaddr_in6*,struct ip6_pktopts*,struct ip6_moptions*,struct route_in6*,struct sockaddr_in6*,struct ifnet**) ;
 int * in6_selectsrc_core (struct sockaddr_in6*,int ,struct ifnet*,int ,struct in6_addr*,struct ifnet**,int*,int *) ;
 int in6_setscope (struct in6_addr*,struct ifnet*,int *) ;
 scalar_t__ inp_restricted_send (struct inpcb*,struct ifnet*) ;
 int ip6_prefer_tempaddr ;
 TYPE_1__* satosin6 (int *) ;

struct in6_addr *
in6_selectsrc(struct sockaddr_in6 *dstsock, struct ip6_pktopts *opts,
    struct inpcb *inp, struct route_in6 *ro,
    struct ifnet **ifpp, struct in6_addr *src_storage, unsigned int ifscope,
    int *errorp)
{
 struct ifnet *ifp = ((void*)0);
 struct in6_pktinfo *pi = ((void*)0);
 struct ip6_moptions *mopts;
 struct ip6_out_args ip6oa;
 boolean_t inp_debug = FALSE;
 uint32_t hint_mask = 0;
 int prefer_tempaddr = 0;
 struct ifnet *sifp = ((void*)0);

 bzero(&ip6oa, sizeof(ip6oa));
 ip6oa.ip6oa_boundif = ifscope;
 ip6oa.ip6oa_flags = IP6OAF_SELECT_SRCIF;
 ip6oa.ip6oa_sotc = SO_TC_UNSPEC;
 ip6oa.ip6oa_netsvctype = _NET_SERVICE_TYPE_UNSPEC;

 *errorp = 0;
 if (ifpp != ((void*)0))
  *ifpp = ((void*)0);

 if (inp != ((void*)0)) {
  inp_debug = SASEL_DO_DBG(inp);
  mopts = inp->in6p_moptions;
  if (INP_NO_CELLULAR(inp))
   ip6oa.ip6oa_flags |= IP6OAF_NO_CELLULAR;
  if (INP_NO_EXPENSIVE(inp))
   ip6oa.ip6oa_flags |= IP6OAF_NO_EXPENSIVE;
  if (INP_AWDL_UNRESTRICTED(inp))
   ip6oa.ip6oa_flags |= IP6OAF_AWDL_UNRESTRICTED;
  if (INP_INTCOPROC_ALLOWED(inp))
   ip6oa.ip6oa_flags |= IP6OAF_INTCOPROC_ALLOWED;
 } else {
  mopts = ((void*)0);

  ip6oa.ip6oa_flags |= IP6OAF_INTCOPROC_ALLOWED |
      IP6OAF_AWDL_UNRESTRICTED;
 }

 if (ip6oa.ip6oa_boundif != IFSCOPE_NONE)
  ip6oa.ip6oa_flags |= IP6OAF_BOUND_IF;







 if (opts && (pi = opts->ip6po_pktinfo) &&
     !IN6_IS_ADDR_UNSPECIFIED(&pi->ipi6_addr)) {
  struct sockaddr_in6 srcsock;
  struct in6_ifaddr *ia6;


  if ((*errorp = in6_selectif(dstsock, opts, mopts, ro, &ip6oa,
      &ifp)) != 0) {
   src_storage = ((void*)0);
   goto done;
  }
  bzero(&srcsock, sizeof (srcsock));
  srcsock.sin6_family = AF_INET6;
  srcsock.sin6_len = sizeof (srcsock);
  srcsock.sin6_addr = pi->ipi6_addr;
  if (ifp != ((void*)0)) {
   *errorp = in6_setscope(&srcsock.sin6_addr, ifp, ((void*)0));
   if (*errorp != 0) {
    src_storage = ((void*)0);
    goto done;
   }
  }
  ia6 = (struct in6_ifaddr *)ifa_ifwithaddr((struct sockaddr *)
      (&srcsock));
  if (ia6 == ((void*)0)) {
   *errorp = EADDRNOTAVAIL;
   src_storage = ((void*)0);
   goto done;
  }
  IFA_LOCK_SPIN(&ia6->ia_ifa);
  if ((ia6->ia6_flags & (IN6_IFF_ANYCAST | IN6_IFF_NOTREADY | IN6_IFF_CLAT46)) ||
      (inp && inp_restricted_send(inp, ia6->ia_ifa.ifa_ifp))) {
   IFA_UNLOCK(&ia6->ia_ifa);
   IFA_REMREF(&ia6->ia_ifa);
   *errorp = EHOSTUNREACH;
   src_storage = ((void*)0);
   goto done;
  }

  *src_storage = satosin6(&ia6->ia_addr)->sin6_addr;
  IFA_UNLOCK(&ia6->ia_ifa);
  IFA_REMREF(&ia6->ia_ifa);
  goto done;
 }




 if (inp != ((void*)0) && !IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_laddr)) {
  src_storage = &inp->in6p_laddr;
  goto done;
 }






 if ((*errorp = in6_selectif(dstsock, opts, mopts, ro, &ip6oa,
     &ifp)) != 0) {
  src_storage = ((void*)0);
  goto done;
 }

 VERIFY(ifp != ((void*)0));

 if (opts == ((void*)0) ||
     opts->ip6po_prefer_tempaddr == IP6PO_TEMPADDR_SYSTEM) {
  prefer_tempaddr = ip6_prefer_tempaddr;
 } else if (opts->ip6po_prefer_tempaddr == IP6PO_TEMPADDR_NOTPREFER) {
  prefer_tempaddr = 0;
 } else
  prefer_tempaddr = 1;

 if (prefer_tempaddr)
  hint_mask |= IPV6_SRCSEL_HINT_PREFER_TMPADDR;

 if (in6_selectsrc_core(dstsock, hint_mask, ifp, inp_debug, src_storage,
     &sifp, errorp, ((void*)0)) == ((void*)0)) {
  src_storage = ((void*)0);
  goto done;
 }

 VERIFY(sifp != ((void*)0));

 if (inp && inp_restricted_send(inp, sifp)) {
  src_storage = ((void*)0);
  *errorp = EHOSTUNREACH;
  ifnet_release(sifp);
  goto done;
 } else {
  ifnet_release(sifp);
 }

done:
 if (ifpp != ((void*)0)) {

  *ifpp = ifp;
 } else if (ifp != ((void*)0)) {
  ifnet_release(ifp);
 }
 return (src_storage);
}
