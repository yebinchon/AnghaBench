
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int allocated_small; TYPE_3__* bstats; int nrequests_small; int ndalloc_small; int nmalloc_small; int hstats; int lstats; int astats; int pdirty; int pactive; int lg_dirty_mult; int dss; } ;
typedef TYPE_1__ ctl_arena_stats_t ;
typedef int arena_t ;
struct TYPE_5__ {int curregs; scalar_t__ nrequests; scalar_t__ ndalloc; scalar_t__ nmalloc; } ;


 unsigned int NBINS ;
 int arena_stats_merge (int *,int *,int *,int *,int *,int *,TYPE_3__*,int ,int ) ;
 int index2size (unsigned int) ;

__attribute__((used)) static void
ctl_arena_stats_amerge(ctl_arena_stats_t *cstats, arena_t *arena)
{
 unsigned i;

 arena_stats_merge(arena, &cstats->dss, &cstats->lg_dirty_mult,
     &cstats->pactive, &cstats->pdirty, &cstats->astats, cstats->bstats,
     cstats->lstats, cstats->hstats);

 for (i = 0; i < NBINS; i++) {
  cstats->allocated_small += cstats->bstats[i].curregs *
      index2size(i);
  cstats->nmalloc_small += cstats->bstats[i].nmalloc;
  cstats->ndalloc_small += cstats->bstats[i].ndalloc;
  cstats->nrequests_small += cstats->bstats[i].nrequests;
 }
}
