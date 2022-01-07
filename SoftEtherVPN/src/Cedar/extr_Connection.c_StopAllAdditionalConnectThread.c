
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int ServerMode; int ConnectingThreads; int ConnectingSocks; } ;
typedef int THREAD ;
typedef int SOCK ;
typedef TYPE_1__ CONNECTION ;


 int Debug (char*,size_t) ;
 int DeleteAll (int ) ;
 int Disconnect (int *) ;
 int Free (int **) ;
 int INFINITE ;
 size_t LIST_NUM (int ) ;
 int LockList (int ) ;
 int ReleaseSock (int *) ;
 int ReleaseThread (int *) ;
 int ** ToArray (int ) ;
 int UnlockList (int ) ;
 int WaitThread (int *,int ) ;

void StopAllAdditionalConnectThread(CONNECTION *c)
{
 UINT i, num;
 SOCK **socks;
 THREAD **threads;

 if (c == ((void*)0) || c->ServerMode != 0)
 {
  return;
 }


 LockList(c->ConnectingSocks);
 {
  num = LIST_NUM(c->ConnectingSocks);
  socks = ToArray(c->ConnectingSocks);
  DeleteAll(c->ConnectingSocks);
 }
 UnlockList(c->ConnectingSocks);
 for (i = 0;i < num;i++)
 {
  Disconnect(socks[i]);
  ReleaseSock(socks[i]);
 }
 Free(socks);


 LockList(c->ConnectingThreads);
 {
  num = LIST_NUM(c->ConnectingThreads);
  Debug("c->ConnectingThreads: %u\n", num);
  threads = ToArray(c->ConnectingThreads);
  DeleteAll(c->ConnectingThreads);
 }
 UnlockList(c->ConnectingThreads);
 for (i = 0;i < num;i++)
 {
  WaitThread(threads[i], INFINITE);
  ReleaseThread(threads[i]);
 }
 Free(threads);
}
