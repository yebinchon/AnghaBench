
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
typedef int tmp ;
struct llinfo_arp {scalar_t__ la_lastused; int la_rt; struct if_llreach* la_llreach; } ;
struct if_llreach {int lr_reqcnt; scalar_t__ lr_lastrcvd; int lr_ifp; } ;
typedef int int64_t ;
struct TYPE_2__ {int sin_addr; } ;


 int AF_INET ;
 int LOG_DEBUG ;
 int MAX_IPv4_STR_LEN ;
 TYPE_1__* SIN (int ) ;
 int VERIFY (int ) ;
 scalar_t__ arp_llreach_base ;
 int arp_llreach_use (struct llinfo_arp*) ;
 int arp_verbose ;
 int if_name (int ) ;
 scalar_t__ ifnet_llreach_reachable (struct if_llreach*) ;
 scalar_t__ ifnet_llreach_reachable_delta (struct if_llreach*,scalar_t__) ;
 int inet_ntop (int ,int *,char*,int) ;
 int log (int ,char*,int ,int ,char const*,int,int) ;
 scalar_t__ net_uptime () ;
 int rt_key (int ) ;

__attribute__((used)) static __inline int
arp_llreach_reachable(struct llinfo_arp *la)
{
 struct if_llreach *lr;
 const char *why = ((void*)0);


 if (arp_llreach_base == 0)
  return (1);

 if ((lr = la->la_llreach) == ((void*)0)) {




  return (1);
 } else if (ifnet_llreach_reachable(lr)) {





  if (lr->lr_reqcnt == 1)
   return (1);


  if (la->la_lastused == 0) {
   VERIFY(la->la_llreach != ((void*)0));
   arp_llreach_use(la);
  }
  if (ifnet_llreach_reachable_delta(lr, la->la_lastused))
   return (1);

  why = "has alias(es) and hasn't been used in a while";
 } else {
  why = "haven't heard from it in a while";
 }

 if (arp_verbose > 1) {
  char tmp[MAX_IPv4_STR_LEN];
  u_int64_t now = net_uptime();

  log(LOG_DEBUG, "%s: ARP probe(s) needed for %s; "
      "%s [lastused %lld, lastrcvd %lld] secs ago\n",
      if_name(lr->lr_ifp), inet_ntop(AF_INET,
      &SIN(rt_key(la->la_rt))->sin_addr, tmp, sizeof (tmp)), why,
      (la->la_lastused ? (int64_t)(now - la->la_lastused) : -1),
      (lr->lr_lastrcvd ? (int64_t)(now - lr->lr_lastrcvd) : -1));

 }
 return (0);
}
