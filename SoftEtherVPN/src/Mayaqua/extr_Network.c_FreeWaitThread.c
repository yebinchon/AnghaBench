
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;
typedef int THREAD ;


 int DeleteAll (int *) ;
 int Free (int **) ;
 int INFINITE ;
 size_t LIST_NUM (int *) ;
 int LockList (int *) ;
 int ReleaseList (int *) ;
 int ReleaseThread (int *) ;
 int ** ToArray (int *) ;
 int UnlockList (int *) ;
 int WaitThread (int *,int ) ;
 int * WaitThreadList ;

void FreeWaitThread()
{
 UINT i, num;
 THREAD **threads;

 LockList(WaitThreadList);
 {
  num = LIST_NUM(WaitThreadList);
  threads = ToArray(WaitThreadList);
  DeleteAll(WaitThreadList);
 }
 UnlockList(WaitThreadList);

 for (i = 0;i < num;i++)
 {
  THREAD *t = threads[i];
  WaitThread(t, INFINITE);
  ReleaseThread(t);
 }

 Free(threads);

 ReleaseList(WaitThreadList);
 WaitThreadList = ((void*)0);
}
