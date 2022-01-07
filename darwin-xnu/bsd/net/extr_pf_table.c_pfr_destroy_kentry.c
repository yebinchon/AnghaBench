
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_kentry {scalar_t__ pfrke_intrpool; } ;


 int pfr_kentry_pl ;
 int pfr_kentry_pl2 ;
 int pool_put (int *,struct pfr_kentry*) ;

__attribute__((used)) static void
pfr_destroy_kentry(struct pfr_kentry *ke)
{
 if (ke->pfrke_intrpool)
  pool_put(&pfr_kentry_pl2, ke);
 else
  pool_put(&pfr_kentry_pl, ke);
}
