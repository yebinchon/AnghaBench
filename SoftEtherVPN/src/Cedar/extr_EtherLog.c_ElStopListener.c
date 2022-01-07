
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int Listener; int AdminThreadList; int AdminSockList; int Cedar; } ;
typedef int THREAD ;
typedef int SOCK ;
typedef TYPE_1__ EL ;


 int DeleteAll (int ) ;
 int Disconnect (int *) ;
 int Free (int **) ;
 int INFINITE ;
 size_t LIST_NUM (int ) ;
 int LockList (int ) ;
 int ReleaseList (int ) ;
 int ReleaseListener (int ) ;
 int ReleaseSock (int *) ;
 int ReleaseThread (int *) ;
 int StopAllListener (int ) ;
 int ** ToArray (int ) ;
 int UnlockList (int ) ;
 int WaitThread (int *,int ) ;

void ElStopListener(EL *e)
{
 UINT i;
 THREAD **threads;
 SOCK **socks;
 UINT num_threads, num_socks;

 if (e == ((void*)0))
 {
  return;
 }

 StopAllListener(e->Cedar);

 LockList(e->AdminThreadList);
 {
  threads = ToArray(e->AdminThreadList);
  num_threads = LIST_NUM(e->AdminThreadList);
  DeleteAll(e->AdminThreadList);

  socks = ToArray(e->AdminSockList);
  num_socks = LIST_NUM(e->AdminSockList);
  DeleteAll(e->AdminSockList);
 }
 UnlockList(e->AdminThreadList);

 for (i = 0;i < num_socks;i++)
 {
  Disconnect(socks[i]);
  ReleaseSock(socks[i]);
 }

 for (i = 0;i < num_threads;i++)
 {
  WaitThread(threads[i], INFINITE);
  ReleaseThread(threads[i]);
 }

 Free(threads);
 Free(socks);

 ReleaseList(e->AdminSockList);
 ReleaseList(e->AdminThreadList);

 ReleaseListener(e->Listener);
}
