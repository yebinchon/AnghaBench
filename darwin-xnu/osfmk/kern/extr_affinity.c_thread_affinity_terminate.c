
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* affinity_space_t ;
typedef TYPE_3__* affinity_set_t ;
struct TYPE_11__ {TYPE_2__* aset_space; } ;
struct TYPE_10__ {int aspc_lock; } ;
struct TYPE_9__ {TYPE_3__* affinity_set; } ;


 int DBG (char*,TYPE_1__*) ;
 int affinity_set_free (TYPE_3__*) ;
 scalar_t__ affinity_set_remove (TYPE_3__*,TYPE_1__*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
thread_affinity_terminate(thread_t thread)
{
 affinity_set_t aset = thread->affinity_set;
 affinity_space_t aspc;

 DBG("thread_affinity_terminate(%p)\n", thread);

 aspc = aset->aset_space;
 lck_mtx_lock(&aspc->aspc_lock);
 if (affinity_set_remove(aset, thread)) {
  affinity_set_free(aset);
 }
 lck_mtx_unlock(&aspc->aspc_lock);
}
