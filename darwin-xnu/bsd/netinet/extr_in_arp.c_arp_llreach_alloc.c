
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int tmp ;
struct TYPE_5__ {scalar_t__ rmx_expire; } ;
struct rtentry {scalar_t__ rt_expire; int (* rt_llinfo_purge ) (struct rtentry*) ;struct llinfo_arp* rt_llinfo; TYPE_2__* rt_ifp; TYPE_1__ rt_rmx; } ;
struct llinfo_arp {struct if_llreach* la_llreach; } ;
struct ifnet {unsigned int if_addrlen; } ;
struct TYPE_7__ {int addr; } ;
struct if_llreach {scalar_t__ lr_probes; TYPE_3__ lr_key; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {int sin_addr; } ;
struct TYPE_6__ {int if_flags; } ;


 int AF_INET ;
 int ETHERTYPE_IP ;
 int IFF_LOOPBACK ;
 int IFLR_LOCK (struct if_llreach*) ;
 int IFLR_UNLOCK (struct if_llreach*) ;
 unsigned int IF_LLREACH_MAXLEN ;
 int LOG_DEBUG ;
 int MAX_IPv4_STR_LEN ;
 int ROUTE_LLENTRY_CHANGED ;
 int ROUTE_LLENTRY_RESOLVED ;
 int RT_CONVERT_LOCK (struct rtentry*) ;
 TYPE_4__* SIN (int ) ;
 int VERIFY (int) ;
 scalar_t__ arp_llreach_base ;
 int arp_verbose ;
 scalar_t__ bcmp (void*,int ,unsigned int) ;
 int if_name (struct ifnet*) ;
 struct if_llreach* ifnet_llreach_alloc (struct ifnet*,int ,void*,unsigned int,scalar_t__) ;
 int inet_ntop (int ,int *,char*,int) ;
 int log (int ,char*,int ,char const*,char const*,int ) ;
 int rt_key (struct rtentry*) ;
 int stub1 (struct rtentry*) ;

__attribute__((used)) static void
arp_llreach_alloc(struct rtentry *rt, struct ifnet *ifp, void *addr,
    unsigned int alen, boolean_t solicited, uint32_t *p_rt_event_code)
{
 VERIFY(rt->rt_expire == 0 || rt->rt_rmx.rmx_expire != 0);
 VERIFY(rt->rt_expire != 0 || rt->rt_rmx.rmx_expire == 0);

 if (arp_llreach_base != 0 && rt->rt_expire != 0 &&
     !(rt->rt_ifp->if_flags & IFF_LOOPBACK) &&
     ifp->if_addrlen == IF_LLREACH_MAXLEN &&
     alen == ifp->if_addrlen) {
  struct llinfo_arp *la = rt->rt_llinfo;
  struct if_llreach *lr;
  const char *why = ((void*)0), *type = "";


  RT_CONVERT_LOCK(rt);

  if ((lr = la->la_llreach) != ((void*)0)) {
   type = (solicited ? "ARP reply" : "ARP announcement");




   IFLR_LOCK(lr);
   if (bcmp(addr, lr->lr_key.addr, alen) != 0) {
    IFLR_UNLOCK(lr);

    VERIFY(rt->rt_llinfo_purge != ((void*)0));
    rt->rt_llinfo_purge(rt);
    lr = ((void*)0);
    why = " for different target HW address; "
        "using new llreach record";
    *p_rt_event_code = ROUTE_LLENTRY_CHANGED;
   } else {




    if (lr->lr_probes != 0)
     *p_rt_event_code = ROUTE_LLENTRY_RESOLVED;

    lr->lr_probes = 0;
    IFLR_UNLOCK(lr);
    if (solicited) {
     why = " for same target HW address; "
         "keeping existing llreach record";
    }
   }
  }

  if (lr == ((void*)0)) {
   lr = la->la_llreach = ifnet_llreach_alloc(ifp,
       ETHERTYPE_IP, addr, alen, arp_llreach_base);
   if (lr != ((void*)0)) {
    lr->lr_probes = 0;
    if (why == ((void*)0))
     why = "creating new llreach record";
   }
   *p_rt_event_code = ROUTE_LLENTRY_RESOLVED;
  }

  if (arp_verbose > 1 && lr != ((void*)0) && why != ((void*)0)) {
   char tmp[MAX_IPv4_STR_LEN];

   log(LOG_DEBUG, "%s: %s%s for %s\n", if_name(ifp),
       type, why, inet_ntop(AF_INET,
       &SIN(rt_key(rt))->sin_addr, tmp, sizeof (tmp)));
  }
 }
}
