
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ctl_arena_stats_t ;
struct TYPE_2__ {int narenas; int * arenas; } ;


 int a0dalloc (int *) ;
 scalar_t__ a0malloc (int) ;
 int * arena_init (int) ;
 scalar_t__ ctl_arena_init (int *) ;
 TYPE_1__ ctl_stats ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static bool
ctl_grow(void)
{
 ctl_arena_stats_t *astats;


 if (arena_init(ctl_stats.narenas) == ((void*)0))
  return (1);


 astats = (ctl_arena_stats_t *)a0malloc((ctl_stats.narenas + 2) *
     sizeof(ctl_arena_stats_t));
 if (astats == ((void*)0))
  return (1);


 memcpy(astats, ctl_stats.arenas, (ctl_stats.narenas + 1) *
     sizeof(ctl_arena_stats_t));
 memset(&astats[ctl_stats.narenas + 1], 0, sizeof(ctl_arena_stats_t));
 if (ctl_arena_init(&astats[ctl_stats.narenas + 1])) {
  a0dalloc(astats);
  return (1);
 }

 {
  ctl_arena_stats_t tstats;
  memcpy(&tstats, &astats[ctl_stats.narenas],
      sizeof(ctl_arena_stats_t));
  memcpy(&astats[ctl_stats.narenas],
      &astats[ctl_stats.narenas + 1], sizeof(ctl_arena_stats_t));
  memcpy(&astats[ctl_stats.narenas + 1], &tstats,
      sizeof(ctl_arena_stats_t));
 }
 a0dalloc(ctl_stats.arenas);
 ctl_stats.arenas = astats;
 ctl_stats.narenas++;

 return (0);
}
