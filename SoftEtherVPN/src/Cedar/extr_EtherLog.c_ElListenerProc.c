
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int rand ;
typedef int pass2 ;
typedef int code ;
typedef int UCHAR ;
struct TYPE_21__ {int AdminThreadList; int AdminSockList; int HashedPassword; } ;
struct TYPE_20__ {TYPE_2__* s; TYPE_1__* r; } ;
struct TYPE_19__ {int ref; } ;
struct TYPE_18__ {scalar_t__ ThreadParam; } ;
typedef TYPE_2__ THREAD ;
typedef TYPE_3__ TCP_ACCEPTED_PARAM ;
typedef TYPE_2__ SOCK ;
typedef int RPC ;
typedef TYPE_5__ EL ;


 int AddRef (int ) ;
 scalar_t__ Cmp (int*,int*,int) ;
 scalar_t__ Delete (int ,TYPE_2__*) ;
 int Disconnect (TYPE_2__*) ;
 int ElRpcServer ;
 int Endian32 (int) ;
 int INFINITE ;
 int Insert (int ,TYPE_2__*) ;
 int LockList (int ) ;
 int NoticeThreadInit (TYPE_2__*) ;
 int Rand (int*,int) ;
 int RecvAll (TYPE_2__*,int*,int,int) ;
 int ReleaseSock (TYPE_2__*) ;
 int ReleaseThread (TYPE_2__*) ;
 int RpcFree (int *) ;
 int RpcServer (int *) ;
 int SHA1_SIZE ;
 int SecurePassword (int*,int ,int*) ;
 int SendAll (TYPE_2__*,int*,int,int) ;
 int SetTimeout (TYPE_2__*,int) ;
 int * StartRpcServer (TYPE_2__*,int ,TYPE_5__*) ;
 int UnlockList (int ) ;
 int Zero (int*,int) ;

void ElListenerProc(THREAD *thread, void *param)
{
 TCP_ACCEPTED_PARAM *data = (TCP_ACCEPTED_PARAM *)param;
 EL *e;
 SOCK *s;
 UCHAR rand[SHA1_SIZE];
 UCHAR pass1[SHA1_SIZE], pass2[SHA1_SIZE];

 if (data == ((void*)0) || thread == ((void*)0))
 {
  return;
 }

 e = (EL *)data->r->ThreadParam;
 s = data->s;
 AddRef(s->ref);
 SetTimeout(s, 5000);
 LockList(e->AdminThreadList);
 {
  AddRef(thread->ref);
  AddRef(s->ref);
  Insert(e->AdminThreadList, thread);
  Insert(e->AdminSockList, s);
 }
 UnlockList(e->AdminThreadList);
 NoticeThreadInit(thread);


 Rand(rand, sizeof(rand));
 SendAll(s, rand, sizeof(rand), 0);


 SecurePassword(pass1, e->HashedPassword, rand);
 Zero(pass2, sizeof(pass2));
 (void)RecvAll(s, pass2, sizeof(pass2), 0);

 if (Cmp(pass1, pass2, SHA1_SIZE) != 0)
 {

  bool code = 0;
  code = Endian32(code);
  SendAll(s, &code, sizeof(code), 0);
 }
 else
 {

  bool code = 1;
  RPC *r;

  code = Endian32(code);
  SendAll(s, &code, sizeof(code), 0);

  SetTimeout(s, INFINITE);


  r = StartRpcServer(s, ElRpcServer, e);
  RpcServer(r);
  RpcFree(r);
 }

 Disconnect(s);
 ReleaseSock(s);

 LockList(e->AdminThreadList);
 {
  if (Delete(e->AdminThreadList, thread))
  {
   ReleaseThread(thread);
  }
  if (Delete(e->AdminSockList, s))
  {
   ReleaseSock(s);
  }
 }
 UnlockList(e->AdminThreadList);
}
