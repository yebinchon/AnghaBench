
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int IpWaitTable; scalar_t__ Now; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ Expire; scalar_t__ DestIP; scalar_t__ SrcIP; scalar_t__ Size; void* Data; } ;
typedef TYPE_2__ IP_WAIT ;


 int Add (int ,TYPE_2__*) ;
 scalar_t__ IP_WAIT_FOR_ARP_TIMEOUT ;
 TYPE_2__* ZeroMalloc (int) ;

void InsertIpWaitTable(VH *v, UINT dest_ip, UINT src_ip, void *data, UINT size)
{
 IP_WAIT *w;

 if (v == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return;
 }

 w = ZeroMalloc(sizeof(IP_WAIT));
 w->Data = data;
 w->Size = size;
 w->SrcIP = src_ip;
 w->DestIP = dest_ip;
 w->Expire = v->Now + (UINT64)IP_WAIT_FOR_ARP_TIMEOUT;

 Add(v->IpWaitTable, w);
}
