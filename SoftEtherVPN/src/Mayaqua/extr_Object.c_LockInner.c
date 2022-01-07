
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOCK ;


 int KS_CURRENT_LOCKED_COUNT ;
 int KS_INC (int ) ;
 int KS_LOCK_COUNT ;
 int OSLock (int *) ;

bool LockInner(LOCK *lock)
{

 if (lock == ((void*)0))
 {
  return 0;
 }


 KS_INC(KS_LOCK_COUNT);
 KS_INC(KS_CURRENT_LOCKED_COUNT);

 return OSLock(lock);
}
