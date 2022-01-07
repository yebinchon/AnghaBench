
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THREAD ;


 scalar_t__ Delete (int ,int *) ;
 int LockList (int ) ;
 int ReleaseThread (int *) ;
 int UnlockList (int ) ;
 int WaitThreadList ;

void DelWaitThread(THREAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 LockList(WaitThreadList);
 {
  if (Delete(WaitThreadList, t))
  {
   ReleaseThread(t);
  }
 }
 UnlockList(WaitThreadList);
}
