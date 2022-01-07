
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ctl_named_node_t ;
struct TYPE_4__ {size_t narenas; TYPE_1__* arenas; } ;
struct TYPE_3__ {int initialized; } ;


 int ctl_mtx ;
 TYPE_2__ ctl_stats ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int * super_stats_arenas_i_node ;

__attribute__((used)) static const ctl_named_node_t *
stats_arenas_i_index(const size_t *mib, size_t miblen, size_t i)
{
 const ctl_named_node_t * ret;

 malloc_mutex_lock(&ctl_mtx);
 if (i > ctl_stats.narenas || !ctl_stats.arenas[i].initialized) {
  ret = ((void*)0);
  goto label_return;
 }

 ret = super_stats_arenas_i_node;
label_return:
 malloc_mutex_unlock(&ctl_mtx);
 return (ret);
}
