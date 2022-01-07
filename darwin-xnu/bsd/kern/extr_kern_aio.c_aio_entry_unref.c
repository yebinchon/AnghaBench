
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ aio_refcount; int flags; } ;
typedef TYPE_1__ aio_workq_entry ;


 int AIO_DO_FREE ;
 int aio_entry_lock_spin (TYPE_1__*) ;
 int aio_entry_unlock (TYPE_1__*) ;
 int aio_entry_unref_locked (TYPE_1__*) ;
 int aio_free_request (TYPE_1__*) ;

__attribute__((used)) static void
aio_entry_unref(aio_workq_entry *entryp)
{
 aio_entry_lock_spin(entryp);
 aio_entry_unref_locked(entryp);

 if ((entryp->aio_refcount == 0) && ((entryp->flags & AIO_DO_FREE) != 0)) {
  aio_entry_unlock(entryp);
  aio_free_request(entryp);
 } else {
  aio_entry_unlock(entryp);
 }

 return;
}
