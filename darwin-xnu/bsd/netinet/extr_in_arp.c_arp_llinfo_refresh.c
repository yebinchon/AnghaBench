
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct rtentry {scalar_t__ rt_expire; int rt_flags; } ;


 int RTF_LLINFO ;
 int RTF_STATIC ;
 scalar_t__ net_uptime () ;

__attribute__((used)) static void
arp_llinfo_refresh(struct rtentry *rt)
{
 uint64_t timenow = net_uptime();





 if ((rt->rt_expire == 0) ||
     (rt->rt_flags & RTF_STATIC) ||
     !(rt->rt_flags & RTF_LLINFO)) {
  return;
 }

 if (rt->rt_expire > timenow)
  rt->rt_expire = timenow;
 return;
}
