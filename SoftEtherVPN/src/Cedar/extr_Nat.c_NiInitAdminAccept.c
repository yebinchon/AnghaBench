
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * AdminAcceptThread; } ;
typedef int THREAD ;
typedef TYPE_1__ NAT ;


 int * NewThread (int ,TYPE_1__*) ;
 int NiListenThread ;
 int WaitThreadInit (int *) ;

void NiInitAdminAccept(NAT *n)
{
 THREAD *t;

 if (n == ((void*)0))
 {
  return;
 }

 t = NewThread(NiListenThread, n);
 WaitThreadInit(t);
 n->AdminAcceptThread = t;
}
