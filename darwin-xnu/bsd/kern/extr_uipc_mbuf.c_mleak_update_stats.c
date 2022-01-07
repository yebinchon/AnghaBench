
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mltr_allocs; int mltr_depth; int * mltr_addr; int mltr_hitcount; int mltr_collisions; } ;
typedef TYPE_1__ mleak_trace_stat_t ;
struct TYPE_7__ {int ml_isaddr64; int ml_cnt; TYPE_1__* ml_trace; } ;
struct TYPE_6__ {scalar_t__ allocs; int depth; int * addr; int hitcount; int collisions; } ;


 int MLEAK_NUM_TRACES ;
 int MLEAK_STACK_DEPTH ;
 int VERIFY (int) ;
 int bzero (TYPE_1__*,int) ;
 int mleak_sort_traces () ;
 TYPE_3__* mleak_stat ;
 TYPE_2__** mleak_top_trace ;

__attribute__((used)) static void
mleak_update_stats()
{
 mleak_trace_stat_t *mltr;
 int i;

 VERIFY(mleak_stat != ((void*)0));

 VERIFY(mleak_stat->ml_isaddr64);



 VERIFY(mleak_stat->ml_cnt == MLEAK_NUM_TRACES);

 mleak_sort_traces();

 mltr = &mleak_stat->ml_trace[0];
 bzero(mltr, sizeof (*mltr) * MLEAK_NUM_TRACES);
 for (i = 0; i < MLEAK_NUM_TRACES; i++) {
  int j;

  if (mleak_top_trace[i] == ((void*)0) ||
      mleak_top_trace[i]->allocs == 0)
   continue;

  mltr->mltr_collisions = mleak_top_trace[i]->collisions;
  mltr->mltr_hitcount = mleak_top_trace[i]->hitcount;
  mltr->mltr_allocs = mleak_top_trace[i]->allocs;
  mltr->mltr_depth = mleak_top_trace[i]->depth;

  VERIFY(mltr->mltr_depth <= MLEAK_STACK_DEPTH);
  for (j = 0; j < mltr->mltr_depth; j++)
   mltr->mltr_addr[j] = mleak_top_trace[i]->addr[j];

  mltr++;
 }
}
