
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct affinity_space {int dummy; } ;
typedef TYPE_1__* affinity_space_t ;
struct TYPE_4__ {int aspc_task_count; int aspc_affinities; int aspc_lock; } ;


 int DBG (char*,TYPE_1__*) ;
 scalar_t__ kalloc (int) ;
 int lck_mtx_init (int *,int *,int *) ;
 int queue_init (int *) ;
 int task_lck_attr ;
 int task_lck_grp ;

__attribute__((used)) static affinity_space_t
affinity_space_alloc(void)
{
 affinity_space_t aspc;

 aspc = (affinity_space_t) kalloc(sizeof(struct affinity_space));
 if (aspc == ((void*)0))
  return ((void*)0);

 lck_mtx_init(&aspc->aspc_lock, &task_lck_grp, &task_lck_attr);
 queue_init(&aspc->aspc_affinities);
 aspc->aspc_task_count = 1;

 DBG("affinity_space_create() returns %p\n", aspc);
 return aspc;
}
