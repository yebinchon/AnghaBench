
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spin_lock; } ;
typedef TYPE_1__ NEO_LOCK ;
typedef int NDIS_SPIN_LOCK ;


 int NdisAllocateSpinLock (int *) ;
 TYPE_1__* NeoZeroMalloc (int) ;

NEO_LOCK *NeoNewLock()
{
 NDIS_SPIN_LOCK *spin_lock;


 NEO_LOCK *lock = NeoZeroMalloc(sizeof(NEO_LOCK));
 if (lock == ((void*)0))
 {
  return ((void*)0);
 }


 spin_lock = &lock->spin_lock;

 NdisAllocateSpinLock(spin_lock);

 return lock;
}
