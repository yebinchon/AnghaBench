
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int malloc_large_stats_t ;
typedef int malloc_huge_stats_t ;
typedef int malloc_bin_stats_t ;
struct TYPE_3__ {int lg_dirty_mult; int * hstats; int * lstats; int * bstats; scalar_t__ nrequests_small; scalar_t__ ndalloc_small; scalar_t__ nmalloc_small; scalar_t__ allocated_small; int astats; scalar_t__ pdirty; scalar_t__ pactive; int dss; } ;
typedef TYPE_1__ ctl_arena_stats_t ;
typedef int arena_stats_t ;


 int NBINS ;
 scalar_t__ config_stats ;
 size_t dss_prec_limit ;
 int * dss_prec_names ;
 int memset (int *,int ,int) ;
 int nhclasses ;
 int nlclasses ;

__attribute__((used)) static void
ctl_arena_clear(ctl_arena_stats_t *astats)
{

 astats->dss = dss_prec_names[dss_prec_limit];
 astats->lg_dirty_mult = -1;
 astats->pactive = 0;
 astats->pdirty = 0;
 if (config_stats) {
  memset(&astats->astats, 0, sizeof(arena_stats_t));
  astats->allocated_small = 0;
  astats->nmalloc_small = 0;
  astats->ndalloc_small = 0;
  astats->nrequests_small = 0;
  memset(astats->bstats, 0, NBINS * sizeof(malloc_bin_stats_t));
  memset(astats->lstats, 0, nlclasses *
      sizeof(malloc_large_stats_t));
  memset(astats->hstats, 0, nhclasses *
      sizeof(malloc_huge_stats_t));
 }
}
