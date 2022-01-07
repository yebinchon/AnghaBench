
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ctl_named_node_t ;
struct TYPE_2__ {size_t narenas; } ;


 int ctl_mtx ;
 TYPE_1__ ctl_stats ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;
 int * super_arena_i_node ;

__attribute__((used)) static const ctl_named_node_t *
arena_i_index(const size_t *mib, size_t miblen, size_t i)
{
 const ctl_named_node_t * ret;

 malloc_mutex_lock(&ctl_mtx);
 if (i > ctl_stats.narenas) {
  ret = ((void*)0);
  goto label_return;
 }

 ret = super_arena_i_node;
label_return:
 malloc_mutex_unlock(&ctl_mtx);
 return (ret);
}
