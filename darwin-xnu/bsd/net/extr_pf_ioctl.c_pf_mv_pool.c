
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_pooladdr {int dummy; } ;
struct pf_palist {int dummy; } ;


 struct pf_pooladdr* TAILQ_FIRST (struct pf_palist*) ;
 int TAILQ_INSERT_TAIL (struct pf_palist*,struct pf_pooladdr*,int ) ;
 int TAILQ_REMOVE (struct pf_palist*,struct pf_pooladdr*,int ) ;
 int entries ;

__attribute__((used)) static void
pf_mv_pool(struct pf_palist *poola, struct pf_palist *poolb)
{
 struct pf_pooladdr *mv_pool_pa;

 while ((mv_pool_pa = TAILQ_FIRST(poola)) != ((void*)0)) {
  TAILQ_REMOVE(poola, mv_pool_pa, entries);
  TAILQ_INSERT_TAIL(poolb, mv_pool_pa, entries);
 }
}
