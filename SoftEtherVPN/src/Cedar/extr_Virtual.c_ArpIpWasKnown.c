
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VH ;
typedef int UINT ;
typedef int UCHAR ;


 int DeleteArpWaitTable (int *,int ) ;
 int InsertArpTable (int *,int *,int ) ;
 int SendWaitingIp (int *,int *,int ) ;

void ArpIpWasKnown(VH *v, UINT ip, UCHAR *mac)
{

 if (v == ((void*)0) || mac == ((void*)0))
 {
  return;
 }


 DeleteArpWaitTable(v, ip);


 InsertArpTable(v, mac, ip);


 SendWaitingIp(v, mac, ip);
}
