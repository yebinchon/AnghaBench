
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int sa_len; } ;
struct rtentry {struct ifnet* rt_ifp; } ;
struct TYPE_8__ {struct rtentry* ro_rt; } ;
struct inpcb {int inp_flags; int inp_socket; TYPE_3__ in6p_route; int in6p_outputopts; TYPE_1__* inp_boundifp; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_7__ {scalar_t__ sin6_family; scalar_t__ sin6_port; int sin6_addr; } ;
struct TYPE_6__ {unsigned int if_index; } ;


 scalar_t__ AF_INET6 ;
 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 int EHOSTUNREACH ;
 int EINVAL ;
 unsigned int IFSCOPE_NONE ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INP_BOUND_IF ;
 TYPE_2__* SIN6 (struct sockaddr*) ;
 int SO_FILT_HINT_IFDENIED ;
 int SO_FILT_HINT_LOCKED ;
 int ifnet_reference (struct ifnet*) ;
 int ifnet_release (struct ifnet*) ;
 scalar_t__ in6_embedscope (int *,TYPE_2__*,struct inpcb*,int *,int *) ;
 scalar_t__ in6_ifaddrs ;
 struct in6_addr* in6_selectsrc (TYPE_2__*,int ,struct inpcb*,TYPE_3__*,struct ifnet**,struct in6_addr*,unsigned int,int*) ;
 int in6addr_loopback ;
 scalar_t__ inp_restricted_send (struct inpcb*,struct ifnet*) ;
 int soevent (int ,int) ;

int
in6_pcbladdr(struct inpcb *inp, struct sockaddr *nam,
    struct in6_addr *plocal_addr6, struct ifnet **outif)
{
 struct in6_addr *addr6 = ((void*)0);
 struct in6_addr src_storage;
 int error = 0;
 unsigned int ifscope;

 if (outif != ((void*)0))
  *outif = ((void*)0);
 if (nam->sa_len != sizeof (struct sockaddr_in6))
  return (EINVAL);
 if (SIN6(nam)->sin6_family != AF_INET6)
  return (EAFNOSUPPORT);
 if (SIN6(nam)->sin6_port == 0)
  return (EADDRNOTAVAIL);


 if (in6_embedscope(&SIN6(nam)->sin6_addr, SIN6(nam), inp, ((void*)0), ((void*)0)) != 0)
  return (EINVAL);

 if (in6_ifaddrs) {




  if (IN6_IS_ADDR_UNSPECIFIED(&SIN6(nam)->sin6_addr))
   SIN6(nam)->sin6_addr = in6addr_loopback;
 }

 ifscope = (inp->inp_flags & INP_BOUND_IF) ?
     inp->inp_boundifp->if_index : IFSCOPE_NONE;
 addr6 = in6_selectsrc(SIN6(nam), inp->in6p_outputopts, inp,
     &inp->in6p_route, outif, &src_storage, ifscope, &error);

 if (outif != ((void*)0)) {
  struct rtentry *rt = inp->in6p_route.ro_rt;







  if (rt != ((void*)0) && rt->rt_ifp != *outif) {
   ifnet_reference(rt->rt_ifp);
   if (*outif != ((void*)0))
    ifnet_release(*outif);
   *outif = rt->rt_ifp;
  }
 }

 if (addr6 == ((void*)0)) {
  if (outif != ((void*)0) && (*outif) != ((void*)0) &&
      inp_restricted_send(inp, *outif)) {
   soevent(inp->inp_socket,
       (SO_FILT_HINT_LOCKED | SO_FILT_HINT_IFDENIED));
   error = EHOSTUNREACH;
  }
  if (error == 0)
   error = EADDRNOTAVAIL;
  return (error);
 }

 *plocal_addr6 = *addr6;




 return (0);
}
