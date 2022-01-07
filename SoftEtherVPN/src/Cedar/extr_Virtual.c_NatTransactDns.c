
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int NatDoCancelFlag; int NatTable; } ;
typedef TYPE_1__ VH ;
struct TYPE_8__ {int DnsFinished; int lock; struct TYPE_8__* DnsResponseHostName; struct TYPE_8__* DnsTargetHostName; int * DnsThread; scalar_t__ DisconnectNow; } ;
typedef int THREAD ;
typedef TYPE_2__ NAT_ENTRY ;


 int Delete (int ,TYPE_2__*) ;
 int DeleteLock (int ) ;
 int Free (TYPE_2__*) ;
 int INFINITE ;
 int NatDnsThread ;
 int * NewThread (int ,void*) ;
 int ReleaseThread (int *) ;
 int WaitThread (int *,int ) ;
 int WaitThreadInit (int *) ;

bool NatTransactDns(VH *v, NAT_ENTRY *n)
{

 if (v == ((void*)0) || n == ((void*)0))
 {
  return 1;
 }

 if (n->DisconnectNow)
 {
  goto DISCONNECT;
 }

 if (n->DnsThread == ((void*)0) && n->DnsFinished == 0)
 {

  THREAD *t = NewThread(NatDnsThread, (void *)n);
  WaitThreadInit(t);
  n->DnsThread = t;
 }
 else
 {

  if (n->DnsFinished)
  {

   WaitThread(n->DnsThread, INFINITE);
   ReleaseThread(n->DnsThread);
   n->DnsThread = ((void*)0);

   v->NatDoCancelFlag = 1;
  }
 }

 return 1;

DISCONNECT:


 if (n->DnsThread != ((void*)0))
 {
  WaitThread(n->DnsThread, INFINITE);
  ReleaseThread(n->DnsThread);
  n->DnsThread = ((void*)0);
 }

 if (n->DnsTargetHostName != ((void*)0))
 {
  Free(n->DnsTargetHostName);
  n->DnsTargetHostName = ((void*)0);
 }

 if (n->DnsResponseHostName != ((void*)0))
 {
  Free(n->DnsResponseHostName);
  n->DnsResponseHostName = ((void*)0);
 }

 DeleteLock(n->lock);
 Delete(v->NatTable, n);
 Free(n);

 return 0;
}
