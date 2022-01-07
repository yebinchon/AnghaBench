
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct affinity_space {int dummy; } ;
typedef TYPE_1__* affinity_space_t ;
struct TYPE_5__ {int aspc_lock; int aspc_affinities; } ;


 int DBG (char*,TYPE_1__*) ;
 int assert (int ) ;
 int kfree (TYPE_1__*,int) ;
 int lck_mtx_destroy (int *,int *) ;
 int queue_empty (int *) ;
 int task_lck_grp ;

__attribute__((used)) static void
affinity_space_free(affinity_space_t aspc)
{
 assert(queue_empty(&aspc->aspc_affinities));

 lck_mtx_destroy(&aspc->aspc_lock, &task_lck_grp);
 DBG("affinity_space_free(%p)\n", aspc);
 kfree(aspc, sizeof(struct affinity_space));
}
