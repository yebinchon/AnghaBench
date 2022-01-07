
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VH ;


 int PollingArpTable (int *) ;
 int PollingArpWaitTable (int *) ;
 int PollingBeacon (int *) ;
 int PollingDhcpServer (int *) ;
 int PollingIpCombine (int *) ;
 int PollingIpWaitTable (int *) ;
 int PoolingNat (int *) ;

void VirtualPolling(VH *v)
{

 if (v == ((void*)0))
 {
  return;
 }


 PollingDhcpServer(v);


 PoolingNat(v);


 PollingArpTable(v);


 PollingArpWaitTable(v);


 PollingIpWaitTable(v);


 PollingIpCombine(v);


 PollingBeacon(v);
}
