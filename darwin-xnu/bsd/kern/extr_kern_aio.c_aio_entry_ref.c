
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aio_workq_entry ;


 int aio_entry_lock_spin (int *) ;
 int aio_entry_ref_locked (int *) ;
 int aio_entry_unlock (int *) ;

__attribute__((used)) static void
aio_entry_ref(aio_workq_entry *entryp)
{
 aio_entry_lock_spin(entryp);
 aio_entry_ref_locked(entryp);
 aio_entry_unlock(entryp);
}
