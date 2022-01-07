
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* DhcpPendingLeaseList; void* DhcpLeaseList; } ;
typedef TYPE_1__ VH ;


 int CompareDhcpLeaseList ;
 void* NewList (int ) ;

void InitDhcpServer(VH *v)
{

 if (v == ((void*)0))
 {
  return;
 }


 v->DhcpLeaseList = NewList(CompareDhcpLeaseList);
 v->DhcpPendingLeaseList = NewList(CompareDhcpLeaseList);
}
