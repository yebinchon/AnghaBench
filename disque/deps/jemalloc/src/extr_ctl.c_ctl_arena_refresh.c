
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int pdirty; int pactive; scalar_t__ nthreads; } ;
typedef TYPE_1__ ctl_arena_stats_t ;
struct TYPE_11__ {scalar_t__ ndirty; scalar_t__ nactive; } ;
typedef TYPE_2__ arena_t ;
struct TYPE_12__ {size_t narenas; TYPE_1__* arenas; } ;


 scalar_t__ config_stats ;
 int ctl_arena_clear (TYPE_1__*) ;
 int ctl_arena_stats_amerge (TYPE_1__*,TYPE_2__*) ;
 int ctl_arena_stats_smerge (TYPE_1__*,TYPE_1__*) ;
 TYPE_3__ ctl_stats ;

__attribute__((used)) static void
ctl_arena_refresh(arena_t *arena, unsigned i)
{
 ctl_arena_stats_t *astats = &ctl_stats.arenas[i];
 ctl_arena_stats_t *sstats = &ctl_stats.arenas[ctl_stats.narenas];

 ctl_arena_clear(astats);

 sstats->nthreads += astats->nthreads;
 if (config_stats) {
  ctl_arena_stats_amerge(astats, arena);

  ctl_arena_stats_smerge(sstats, astats);
 } else {
  astats->pactive += arena->nactive;
  astats->pdirty += arena->ndirty;

  sstats->pactive += arena->nactive;
  sstats->pdirty += arena->ndirty;
 }
}
