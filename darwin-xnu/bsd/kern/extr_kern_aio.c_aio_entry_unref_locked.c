
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ aio_refcount; } ;
typedef TYPE_1__ aio_workq_entry ;


 int ASSERT_AIO_ENTRY_LOCK_OWNED (TYPE_1__*) ;
 int panic (char*) ;

__attribute__((used)) static void
aio_entry_unref_locked(aio_workq_entry *entryp)
{
 ASSERT_AIO_ENTRY_LOCK_OWNED(entryp);

 entryp->aio_refcount--;
 if (entryp->aio_refcount < 0) {
  panic("AIO workq entry with a negative refcount.\n");
 }
}
