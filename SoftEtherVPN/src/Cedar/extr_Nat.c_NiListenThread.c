
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_15__ {int AdminList; scalar_t__ Halt; TYPE_1__* AdminListenSock; int HaltEvent; } ;
struct TYPE_14__ {TYPE_1__* Sock; int * Thread; TYPE_3__* Nat; } ;
struct TYPE_13__ {int ref; } ;
typedef int THREAD ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ NAT_ADMIN ;
typedef TYPE_3__ NAT ;


 TYPE_1__* Accept (TYPE_1__*) ;
 int AddRef (int ) ;
 int DEFAULT_NAT_ADMIN_PORT ;
 int Disconnect (TYPE_1__*) ;
 int Free (TYPE_2__*) ;
 int INFINITE ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 TYPE_1__* Listen (int ) ;
 int LockList (int ) ;
 int NAT_ADMIN_PORT_LISTEN_INTERVAL ;
 int NewList (int *) ;
 int * NewThread (int ,TYPE_2__*) ;
 int NiAdminThread ;
 int NoticeThreadInit (int *) ;
 int ReleaseList (int ) ;
 int ReleaseSock (TYPE_1__*) ;
 int ReleaseThread (int *) ;
 int UnlockList (int ) ;
 int Wait (int ,int ) ;
 int WaitThread (int *,int ) ;
 int WaitThreadInit (int *) ;
 TYPE_2__* ZeroMalloc (int) ;

void NiListenThread(THREAD *thread, void *param)
{
 NAT *n = (NAT *)param;
 SOCK *a;
 UINT i;
 bool b = 0;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }


 n->AdminList = NewList(((void*)0));

 while (1)
 {
  a = Listen(DEFAULT_NAT_ADMIN_PORT);
  if (b == 0)
  {
   b = 1;
   NoticeThreadInit(thread);
  }
  if (a != ((void*)0))
  {
   break;
  }

  Wait(n->HaltEvent, NAT_ADMIN_PORT_LISTEN_INTERVAL);
  if (n->Halt)
  {
   return;
  }
 }

 n->AdminListenSock = a;
 AddRef(a->ref);


 while (1)
 {
  SOCK *s = Accept(a);
  THREAD *t;
  NAT_ADMIN *admin;
  if (s == ((void*)0))
  {
   break;
  }
  if (n->Halt)
  {
   ReleaseSock(s);
   break;
  }

  admin = ZeroMalloc(sizeof(NAT_ADMIN));
  admin->Nat = n;
  admin->Sock = s;
  t = NewThread(NiAdminThread, admin);
  WaitThreadInit(t);
  ReleaseThread(t);
 }


 LockList(n->AdminList);
 {
  for (i = 0;i < LIST_NUM(n->AdminList);i++)
  {
   NAT_ADMIN *a = LIST_DATA(n->AdminList, i);
   Disconnect(a->Sock);
   WaitThread(a->Thread, INFINITE);
   ReleaseThread(a->Thread);
   ReleaseSock(a->Sock);
   Free(a);
  }
 }
 UnlockList(n->AdminList);

 ReleaseList(n->AdminList);

 ReleaseSock(a);
}
