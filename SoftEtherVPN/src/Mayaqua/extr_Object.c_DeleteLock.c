
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOCK ;


 int KS_CURRENT_LOCK_COUNT ;
 int KS_DEC (int ) ;
 int KS_DELETELOCK_COUNT ;
 int KS_INC (int ) ;
 int OSDeleteLock (int *) ;

void DeleteLock(LOCK *lock)
{

 if (lock == ((void*)0))
 {
  return;
 }


 KS_INC(KS_DELETELOCK_COUNT);
 KS_DEC(KS_CURRENT_LOCK_COUNT);

 OSDeleteLock(lock);
}
