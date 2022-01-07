
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {scalar_t__ rt_llinfo_purge; struct llinfo_arp* rt_llinfo; } ;
struct llinfo_arp {scalar_t__ la_lastused; int * la_llreach; } ;


 int RT_CONVERT_LOCK (struct rtentry*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int VERIFY (int) ;
 int ifnet_llreach_free (int *) ;

__attribute__((used)) static void
arp_llinfo_purge(struct rtentry *rt)
{
 struct llinfo_arp *la = rt->rt_llinfo;

 RT_LOCK_ASSERT_HELD(rt);
 VERIFY(rt->rt_llinfo_purge == arp_llinfo_purge && la != ((void*)0));

 if (la->la_llreach != ((void*)0)) {
  RT_CONVERT_LOCK(rt);
  ifnet_llreach_free(la->la_llreach);
  la->la_llreach = ((void*)0);
 }
 la->la_lastused = 0;
}
