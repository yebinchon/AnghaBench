
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int * ifp; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct nd_defrouter* defrtrlist_update_common (struct nd_defrouter*,int) ;
 int * nd6_defifp ;
 int nd6_mutex ;

__attribute__((used)) static struct nd_defrouter *
defrtrlist_update(struct nd_defrouter *new)
{
 struct nd_defrouter *dr;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_OWNED);
 dr = defrtrlist_update_common(new,
     (nd6_defifp != ((void*)0) && new->ifp != nd6_defifp));

 return (dr);
}
