
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {scalar_t__ rt_llinfo_purge; struct llinfo_nd6* rt_llinfo; } ;
struct llinfo_nd6 {scalar_t__ ln_lastused; int * ln_llreach; } ;


 int RT_CONVERT_LOCK (struct rtentry*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int VERIFY (int) ;
 int ifnet_llreach_free (int *) ;

__attribute__((used)) static void
nd6_llinfo_purge(struct rtentry *rt)
{
 struct llinfo_nd6 *ln = rt->rt_llinfo;

 RT_LOCK_ASSERT_HELD(rt);
 VERIFY(rt->rt_llinfo_purge == nd6_llinfo_purge && ln != ((void*)0));

 if (ln->ln_llreach != ((void*)0)) {
  RT_CONVERT_LOCK(rt);
  ifnet_llreach_free(ln->ln_llreach);
  ln->ln_llreach = ((void*)0);
 }
 ln->ln_lastused = 0;
}
