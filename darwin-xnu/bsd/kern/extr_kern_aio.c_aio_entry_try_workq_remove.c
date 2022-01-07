
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int aio_workq_t ;
struct TYPE_6__ {int * tqe_prev; } ;
struct TYPE_7__ {TYPE_1__ aio_workq_link; } ;
typedef TYPE_2__ aio_workq_entry ;


 int aio_entry_workq (TYPE_2__*) ;
 int aio_workq_lock_spin (int ) ;
 int aio_workq_remove_entry_locked (int ,TYPE_2__*) ;
 int aio_workq_unlock (int ) ;

__attribute__((used)) static int
aio_entry_try_workq_remove(aio_workq_entry *entryp)
{

 if (entryp->aio_workq_link.tqe_prev != ((void*)0)) {
  aio_workq_t queue;


  queue = aio_entry_workq(entryp);
  aio_workq_lock_spin(queue);
  if (entryp->aio_workq_link.tqe_prev != ((void*)0)) {
   aio_workq_remove_entry_locked(queue, entryp);
   aio_workq_unlock(queue);
   return 1;
  } else {
   aio_workq_unlock(queue);
  }
 }

 return 0;
}
