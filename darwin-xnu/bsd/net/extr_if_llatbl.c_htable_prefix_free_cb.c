
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prefix_match_data {int dchain; int flags; int mask; int addr; } ;
struct lltable {scalar_t__ (* llt_match_prefix ) (int ,int ,int ,struct llentry*) ;} ;
struct llentry {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct llentry*,int ) ;
 int LLE_WLOCK (struct llentry*) ;
 int lle_chain ;
 scalar_t__ stub1 (int ,int ,int ,struct llentry*) ;

__attribute__((used)) static int
htable_prefix_free_cb(struct lltable *llt, struct llentry *lle, void *farg)
{
 struct prefix_match_data *pmd;

 pmd = (struct prefix_match_data *)farg;

 if (llt->llt_match_prefix(pmd->addr, pmd->mask, pmd->flags, lle)) {
  LLE_WLOCK(lle);
  LIST_INSERT_HEAD(&pmd->dchain, lle, lle_chain);
 }

 return (0);
}
