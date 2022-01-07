
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tcache_t ;
struct TYPE_3__ {int lock; int tcache_ql; } ;
typedef TYPE_1__ arena_t ;


 scalar_t__ config_stats ;
 int link ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int ql_elm_new (int *,int ) ;
 int ql_tail_insert (int *,int *,int ) ;

void
tcache_arena_associate(tcache_t *tcache, arena_t *arena)
{

 if (config_stats) {

  malloc_mutex_lock(&arena->lock);
  ql_elm_new(tcache, link);
  ql_tail_insert(&arena->tcache_ql, tcache, link);
  malloc_mutex_unlock(&arena->lock);
 }
}
