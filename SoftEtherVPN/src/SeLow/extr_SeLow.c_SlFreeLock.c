
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spin_lock; } ;
typedef TYPE_1__ SL_LOCK ;
typedef int NDIS_SPIN_LOCK ;


 int NdisFreeSpinLock (int *) ;
 int SlFree (TYPE_1__*) ;

void SlFreeLock(SL_LOCK *lock)
{
 NDIS_SPIN_LOCK *spin_lock;

 if (lock == ((void*)0))
 {
  return;
 }

 spin_lock = &lock->spin_lock;
 NdisFreeSpinLock(spin_lock);


 SlFree(lock);
}
