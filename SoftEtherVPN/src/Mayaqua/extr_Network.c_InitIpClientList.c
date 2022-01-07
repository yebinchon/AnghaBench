
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CompareIpClientList ;
 int NewList (int ) ;
 int ip_clients ;

void InitIpClientList()
{
 ip_clients = NewList(CompareIpClientList);
}
