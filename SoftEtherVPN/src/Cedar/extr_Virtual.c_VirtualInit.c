
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int flag1; int Active; scalar_t__ CurrentIpQuota; scalar_t__ NextArpTablePolling; scalar_t__ DhcpId; TYPE_1__* Counter; int SendQueue; int Cancel; int * Logger; } ;
typedef TYPE_2__ VH ;
typedef scalar_t__ UINT64 ;
struct TYPE_12__ {scalar_t__ c; } ;


 scalar_t__ ARP_ENTRY_POLLING_TIME ;
 int InitArpTable (TYPE_2__*) ;
 int InitArpWaitTable (TYPE_2__*) ;
 int InitDhcpServer (TYPE_2__*) ;
 int InitIpCombineList (TYPE_2__*) ;
 int InitIpWaitTable (TYPE_2__*) ;
 int InitNat (TYPE_2__*) ;
 int LockVirtual (TYPE_2__*) ;
 int NewCancel () ;
 int NewQueue () ;
 scalar_t__ Tick64 () ;
 int UnlockVirtual (TYPE_2__*) ;

bool VirtualInit(VH *v)
{

 v->Logger = ((void*)0);

 LockVirtual(v);
 {

  v->Cancel = NewCancel();
  v->SendQueue = NewQueue();
 }
 UnlockVirtual(v);


 v->Counter->c = 0;
 v->DhcpId = 0;


 InitArpTable(v);


 InitArpWaitTable(v);


 InitIpWaitTable(v);


 InitIpCombineList(v);


 InitNat(v);


 InitDhcpServer(v);


 v->flag1 = 0;
 v->NextArpTablePolling = Tick64() + (UINT64)ARP_ENTRY_POLLING_TIME;
 v->CurrentIpQuota = 0;
 v->Active = 1;

 return 1;
}
