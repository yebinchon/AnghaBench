
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOCK ;


 int KS_CURRENT_LOCKED_COUNT ;
 int KS_DEC (int ) ;
 int KS_INC (int ) ;
 int KS_UNLOCK_COUNT ;
 int OSUnlock (int *) ;

void UnlockInner(LOCK *lock)
{

 if (lock == ((void*)0))
 {
  return;
 }


 KS_INC(KS_UNLOCK_COUNT);
 KS_DEC(KS_CURRENT_LOCKED_COUNT);

 OSUnlock(lock);
}
