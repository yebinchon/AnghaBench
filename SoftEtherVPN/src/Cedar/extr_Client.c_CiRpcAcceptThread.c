
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int RpcConnectionList; } ;
struct TYPE_12__ {int Thread; TYPE_1__* Sock; TYPE_3__* Client; } ;
struct TYPE_11__ {int ref; } ;
typedef int THREAD ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ CLIENT_RPC_CONNECTION ;
typedef TYPE_3__ CLIENT ;


 int Add (int ,TYPE_2__*) ;
 int AddRef (int ) ;
 int CiRpcAccepted (TYPE_3__*,TYPE_1__*) ;
 int Delete (int ,TYPE_2__*) ;
 int Disconnect (TYPE_1__*) ;
 int Free (TYPE_2__*) ;
 int LockList (int ) ;
 int NoticeThreadInit (int *) ;
 int ReleaseSock (TYPE_1__*) ;
 int ReleaseThread (int ) ;
 int UnlockList (int ) ;

void CiRpcAcceptThread(THREAD *thread, void *param)
{
 CLIENT_RPC_CONNECTION *conn;
 CLIENT *c;
 SOCK *s;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 conn = (CLIENT_RPC_CONNECTION *)param;
 s = conn->Sock;
 c = conn->Client;
 AddRef(s->ref);


 LockList(c->RpcConnectionList);
 {
  Add(c->RpcConnectionList, conn);
 }
 UnlockList(c->RpcConnectionList);

 NoticeThreadInit(thread);


 CiRpcAccepted(c, s);


 LockList(c->RpcConnectionList);
 {
  Delete(c->RpcConnectionList, conn);
 }
 UnlockList(c->RpcConnectionList);

 ReleaseSock(conn->Sock);
 ReleaseThread(conn->Thread);
 Free(conn);

 Disconnect(s);
 ReleaseSock(s);
}
