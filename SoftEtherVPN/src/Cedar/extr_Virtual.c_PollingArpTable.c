
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Now; scalar_t__ NextArpTablePolling; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT64 ;


 scalar_t__ ARP_ENTRY_POLLING_TIME ;
 int RefreshArpTable (TYPE_1__*) ;

void PollingArpTable(VH *v)
{

 if (v == ((void*)0))
 {
  return;
 }

 if (v->Now > v->NextArpTablePolling)
 {
  v->NextArpTablePolling = v->Now + (UINT64)ARP_ENTRY_POLLING_TIME;
  RefreshArpTable(v);
 }
}
