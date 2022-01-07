
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
typedef int kern_return_t ;
typedef TYPE_2__* affinity_space_t ;
typedef TYPE_3__* affinity_set_t ;
struct TYPE_27__ {TYPE_2__* affinity_space; } ;
struct TYPE_26__ {int aset_tag; } ;
struct TYPE_25__ {int aspc_lock; } ;
struct TYPE_24__ {TYPE_3__* affinity_set; int active; TYPE_7__* task; } ;


 int DBG (char*,TYPE_1__*,int ,...) ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int KERN_TERMINATED ;
 int THREAD_AFFINITY_TAG_NULL ;
 int THREAD_CONTINUE_NULL ;
 int affinity_set_add (TYPE_3__*,TYPE_1__*) ;
 TYPE_3__* affinity_set_alloc () ;
 TYPE_3__* affinity_set_find (TYPE_2__*,int ) ;
 int affinity_set_free (TYPE_3__*) ;
 int affinity_set_place (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* affinity_set_remove (TYPE_3__*,TYPE_1__*) ;
 TYPE_2__* affinity_space_alloc () ;
 int affinity_space_free (TYPE_2__*) ;
 TYPE_1__* current_thread () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int task_lock (TYPE_7__*) ;
 int task_unlock (TYPE_7__*) ;
 int thread_block (int ) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;

kern_return_t
thread_affinity_set(thread_t thread, uint32_t tag)
{
 affinity_set_t aset;
 affinity_set_t empty_aset = ((void*)0);
 affinity_space_t aspc;
 affinity_space_t new_aspc = ((void*)0);

 DBG("thread_affinity_set(%p,%u)\n", thread, tag);

 task_lock(thread->task);
 aspc = thread->task->affinity_space;
 if (aspc == ((void*)0)) {
  task_unlock(thread->task);
  new_aspc = affinity_space_alloc();
  if (new_aspc == ((void*)0))
   return KERN_RESOURCE_SHORTAGE;
  task_lock(thread->task);
  if (thread->task->affinity_space == ((void*)0)) {
   thread->task->affinity_space = new_aspc;
   new_aspc = ((void*)0);
  }
  aspc = thread->task->affinity_space;
 }
 task_unlock(thread->task);
 if (new_aspc)
  affinity_space_free(new_aspc);

 thread_mtx_lock(thread);
 if (!thread->active) {

  thread_mtx_unlock(thread);
  return KERN_TERMINATED;
 }

 lck_mtx_lock(&aspc->aspc_lock);
 aset = thread->affinity_set;
 if (aset != ((void*)0)) {



  DBG("thread_affinity_set(%p,%u) removing from aset %p\n",
   thread, tag, aset);
  empty_aset = affinity_set_remove(aset, thread);
 }

 if (tag != THREAD_AFFINITY_TAG_NULL) {
  aset = affinity_set_find(aspc, tag);
  if (aset != ((void*)0)) {



   DBG("thread_affinity_set(%p,%u) found aset %p\n",
    thread, tag, aset);
  } else {




   if (empty_aset != ((void*)0)) {
    aset = empty_aset;
    empty_aset = ((void*)0);
   } else {
    aset = affinity_set_alloc();
    if (aset == ((void*)0)) {
     lck_mtx_unlock(&aspc->aspc_lock);
     thread_mtx_unlock(thread);
     return KERN_RESOURCE_SHORTAGE;
    }
   }
   DBG("thread_affinity_set(%p,%u) (re-)using aset %p\n",
    thread, tag, aset);
   aset->aset_tag = tag;
   affinity_set_place(aspc, aset);
  }
  affinity_set_add(aset, thread);
 }

 lck_mtx_unlock(&aspc->aspc_lock);
 thread_mtx_unlock(thread);





 if (empty_aset != ((void*)0))
  affinity_set_free(empty_aset);

 if (thread == current_thread())
         thread_block(THREAD_CONTINUE_NULL);

 return KERN_SUCCESS;
}
