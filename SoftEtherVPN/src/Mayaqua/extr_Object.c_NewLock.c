
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOCK ;


 int KS_CURRENT_LOCK_COUNT ;
 int KS_INC (int ) ;
 int KS_NEWLOCK_COUNT ;
 int * NewLockMain () ;

LOCK *NewLock()
{
 LOCK *lock = NewLockMain();


 KS_INC(KS_NEWLOCK_COUNT);
 KS_INC(KS_CURRENT_LOCK_COUNT);

 return lock;
}
