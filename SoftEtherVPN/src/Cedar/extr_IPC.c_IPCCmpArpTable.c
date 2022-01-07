
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Ip; } ;
typedef TYPE_1__ IPC_ARP ;


 int CmpIpAddr (int *,int *) ;

int IPCCmpArpTable(void *p1, void *p2)
{
 IPC_ARP *a1, *a2;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 a1 = *(IPC_ARP **)p1;
 a2 = *(IPC_ARP **)p2;
 if (a1 == ((void*)0) || a2 == ((void*)0))
 {
  return 0;
 }

 return CmpIpAddr(&a1->Ip, &a2->Ip);
}
