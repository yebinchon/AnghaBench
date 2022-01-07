
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int malloc_large_stats_t ;
typedef int malloc_huge_stats_t ;
struct TYPE_3__ {int * hstats; int * lstats; } ;
typedef TYPE_1__ ctl_arena_stats_t ;


 scalar_t__ a0malloc (int) ;
 int nhclasses ;
 int nlclasses ;

__attribute__((used)) static bool
ctl_arena_init(ctl_arena_stats_t *astats)
{

 if (astats->lstats == ((void*)0)) {
  astats->lstats = (malloc_large_stats_t *)a0malloc(nlclasses *
      sizeof(malloc_large_stats_t));
  if (astats->lstats == ((void*)0))
   return (1);
 }

 if (astats->hstats == ((void*)0)) {
  astats->hstats = (malloc_huge_stats_t *)a0malloc(nhclasses *
      sizeof(malloc_huge_stats_t));
  if (astats->hstats == ((void*)0))
   return (1);
 }

 return (0);
}
