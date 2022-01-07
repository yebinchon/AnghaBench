
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
struct rtentry {int (* rt_llinfo_purge ) (struct rtentry*) ;TYPE_1__* rt_ifp; struct llinfo_nd6* rt_llinfo; } ;
struct llinfo_nd6 {scalar_t__ ln_expire; struct if_llreach* ln_llreach; } ;
struct ifnet {int if_eflags; unsigned int if_addrlen; } ;
struct TYPE_5__ {int addr; } ;
struct if_llreach {scalar_t__ lr_probes; TYPE_2__ lr_key; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int sin6_addr; } ;
struct TYPE_4__ {int if_flags; } ;


 int AF_INET6 ;
 int ETHERTYPE_IPV6 ;
 int IFEF_IPV6_ND6ALT ;
 int IFF_LOOPBACK ;
 int IFLR_LOCK (struct if_llreach*) ;
 int IFLR_UNLOCK (struct if_llreach*) ;
 unsigned int IF_LLREACH_MAXLEN ;
 int LOG_DEBUG ;
 int MAX_IPv6_STR_LEN ;
 int RT_CONVERT_LOCK (struct rtentry*) ;
 TYPE_3__* SIN6 (int ) ;
 int VERIFY (int ) ;
 scalar_t__ bcmp (void*,int ,unsigned int) ;
 int if_name (struct ifnet*) ;
 struct if_llreach* ifnet_llreach_alloc (struct ifnet*,int ,void*,unsigned int,scalar_t__) ;
 int inet_ntop (int ,int *,char*,int) ;
 scalar_t__ nd6_debug ;
 scalar_t__ nd6_llreach_base ;
 int nd6log (int ) ;
 int rt_key (struct rtentry*) ;
 int stub1 (struct rtentry*) ;

void
nd6_llreach_alloc(struct rtentry *rt, struct ifnet *ifp, void *addr,
    unsigned int alen, boolean_t solicited)
{
 struct llinfo_nd6 *ln = rt->rt_llinfo;

 if (nd6_llreach_base != 0 &&
     (ln->ln_expire != 0 || (ifp->if_eflags & IFEF_IPV6_ND6ALT) != 0) &&
     !(rt->rt_ifp->if_flags & IFF_LOOPBACK) &&
     ifp->if_addrlen == IF_LLREACH_MAXLEN &&
     alen == ifp->if_addrlen) {
  struct if_llreach *lr;
  const char *why = ((void*)0), *type = "";


  RT_CONVERT_LOCK(rt);

  if ((lr = ln->ln_llreach) != ((void*)0)) {
   type = (solicited ? "ND6 advertisement" :
       "ND6 unsolicited announcement");




   IFLR_LOCK(lr);
   if (bcmp(addr, lr->lr_key.addr, alen) != 0) {
    IFLR_UNLOCK(lr);

    VERIFY(rt->rt_llinfo_purge != ((void*)0));
    rt->rt_llinfo_purge(rt);
    lr = ((void*)0);
    why = " for different target HW address; "
        "using new llreach record";
   } else {
    lr->lr_probes = 0;
    IFLR_UNLOCK(lr);
    if (solicited) {
     why = " for same target HW address; "
         "keeping existing llreach record";
    }
   }
  }

  if (lr == ((void*)0)) {
   lr = ln->ln_llreach = ifnet_llreach_alloc(ifp,
       ETHERTYPE_IPV6, addr, alen, nd6_llreach_base);
   if (lr != ((void*)0)) {
    lr->lr_probes = 0;
    if (why == ((void*)0))
     why = "creating new llreach record";
   }
  }

  if (nd6_debug && lr != ((void*)0) && why != ((void*)0)) {
   char tmp[MAX_IPv6_STR_LEN];

   nd6log((LOG_DEBUG, "%s: %s%s for %s\n", if_name(ifp),
       type, why, inet_ntop(AF_INET6,
       &SIN6(rt_key(rt))->sin6_addr, tmp, sizeof (tmp))));
  }
 }
}
