
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tcpcb {int t_flags; } ;
struct TYPE_13__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_7__ sin_addr; } ;
struct TYPE_10__ {int rmx_locks; } ;
struct rtentry {int rt_flags; TYPE_5__* rt_ifp; TYPE_4__* rt_gateway; TYPE_3__ rt_rmx; } ;
struct TYPE_8__ {int sa_len; int sa_family; } ;
struct route {struct rtentry* ro_rt; TYPE_1__ ro_dst; } ;
struct inpcb {int inp_flags; TYPE_7__ inp_faddr; TYPE_5__* inp_last_outifp; int inp_socket; TYPE_2__* inp_boundifp; struct route inp_route; } ;
struct TYPE_12__ {int if_hwassist; int if_eflags; int if_flags; } ;
struct TYPE_11__ {scalar_t__ sa_family; } ;
struct TYPE_9__ {unsigned int if_index; } ;


 int AF_INET ;
 scalar_t__ AF_LINK ;
 int IFEF_2KCL ;
 int IFF_LOOPBACK ;
 int IFF_POINTOPOINT ;
 int IFNET_MULTIPAGES ;
 scalar_t__ INADDR_ANY ;
 int INP_BOUND_IF ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int ROUTE_RELEASE (struct route*) ;
 scalar_t__ ROUTE_UNUSABLE (struct route*) ;
 int RTF_UP ;
 int RTV_MTU ;
 int RT_LOCK (struct rtentry*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int TF_LOCAL ;
 int TF_PMTUD ;
 scalar_t__ in_localaddr (TYPE_7__) ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int path_mtu_discovery ;
 int rnh_lock ;
 int rtalloc_scoped (struct route*,unsigned int) ;
 int soif2kcl (int ,int) ;
 int somultipages (int ,int) ;
 int tcp_set_ecn (struct tcpcb*,TYPE_5__*) ;
 int tcp_set_tso (struct tcpcb*,TYPE_5__*) ;

struct rtentry *
tcp_rtlookup(struct inpcb *inp, unsigned int input_ifscope)
{
 struct route *ro;
 struct rtentry *rt;
 struct tcpcb *tp;

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_NOTOWNED);

 ro = &inp->inp_route;
 if ((rt = ro->ro_rt) != ((void*)0))
  RT_LOCK(rt);

 if (ROUTE_UNUSABLE(ro)) {
  if (rt != ((void*)0)) {
   RT_UNLOCK(rt);
   rt = ((void*)0);
  }
  ROUTE_RELEASE(ro);

  if (inp->inp_faddr.s_addr != INADDR_ANY) {
   unsigned int ifscope;

   ro->ro_dst.sa_family = AF_INET;
   ro->ro_dst.sa_len = sizeof(struct sockaddr_in);
   ((struct sockaddr_in *)(void *)&ro->ro_dst)->sin_addr =
    inp->inp_faddr;
   ifscope = (inp->inp_flags & INP_BOUND_IF) ?
       inp->inp_boundifp->if_index : input_ifscope;

   rtalloc_scoped(ro, ifscope);
   if ((rt = ro->ro_rt) != ((void*)0))
    RT_LOCK(rt);
  }
 }
 if (rt != ((void*)0))
  RT_LOCK_ASSERT_HELD(rt);
 tp = intotcpcb(inp);

 if (!path_mtu_discovery || ((rt != ((void*)0)) &&
     (!(rt->rt_flags & RTF_UP) || (rt->rt_rmx.rmx_locks & RTV_MTU))))
  tp->t_flags &= ~TF_PMTUD;
 else
  tp->t_flags |= TF_PMTUD;

 if (rt != ((void*)0) && rt->rt_ifp != ((void*)0)) {
  somultipages(inp->inp_socket,
      (rt->rt_ifp->if_hwassist & IFNET_MULTIPAGES));
  tcp_set_tso(tp, rt->rt_ifp);
  soif2kcl(inp->inp_socket,
      (rt->rt_ifp->if_eflags & IFEF_2KCL));
  tcp_set_ecn(tp, rt->rt_ifp);
  if (inp->inp_last_outifp == ((void*)0)) {
   inp->inp_last_outifp = rt->rt_ifp;

  }
 }


 if (rt != ((void*)0) && !(rt->rt_ifp->if_flags & IFF_POINTOPOINT) &&
  (rt->rt_gateway->sa_family == AF_LINK ||
  rt->rt_ifp->if_flags & IFF_LOOPBACK ||
  in_localaddr(inp->inp_faddr))) {
  tp->t_flags |= TF_LOCAL;
 }




 return (rt);
}
