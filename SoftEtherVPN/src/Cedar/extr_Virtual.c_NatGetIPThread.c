
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; int Hostname; int Ip; int Ok; } ;
typedef int THREAD ;
typedef TYPE_1__ NAT_DNS_QUERY ;


 int AddWaitThread (int *) ;
 int DelWaitThread (int *) ;
 int Free (TYPE_1__*) ;
 int GetIP (int *,int ) ;
 scalar_t__ Release (int ) ;

void NatGetIPThread(THREAD *t, void *param)
{
 NAT_DNS_QUERY *q;

 if (t == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 q = (NAT_DNS_QUERY *)param;
 AddWaitThread(t);

 q->Ok = GetIP(&q->Ip, q->Hostname);

 DelWaitThread(t);

 if (Release(q->ref) == 0)
 {
  Free(q);
 }
}
