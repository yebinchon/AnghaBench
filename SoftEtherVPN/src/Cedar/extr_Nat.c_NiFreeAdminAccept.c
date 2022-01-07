
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Halt; int AdminListenSock; int AdminAcceptThread; int HaltEvent; } ;
typedef TYPE_1__ NAT ;


 int Disconnect (int ) ;
 int ReleaseSock (int ) ;
 int ReleaseThread (int ) ;
 int Set (int ) ;
 int WaitThread (int ,int) ;

void NiFreeAdminAccept(NAT *n)
{

 if (n == ((void*)0))
 {
  return;
 }

 n->Halt = 1;
 Disconnect(n->AdminListenSock);
 Set(n->HaltEvent);

 while (1)
 {
  if (WaitThread(n->AdminAcceptThread, 1000) == 0)
  {
   Disconnect(n->AdminListenSock);
  }
  else
  {
   break;
  }
 }
 ReleaseThread(n->AdminAcceptThread);

 ReleaseSock(n->AdminListenSock);
}
