
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ArpTable; } ;
struct TYPE_7__ {int Ip; } ;
typedef TYPE_1__ IPC_ARP ;
typedef TYPE_2__ IPC ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;

IPC_ARP *IPCSearchArpTable(IPC *ipc, IP *ip)
{
 IPC_ARP t;
 IPC_ARP *a;

 if (ipc == ((void*)0) || ip == ((void*)0))
 {
  return ((void*)0);
 }

 Copy(&t.Ip, ip, sizeof(IP));

 a = Search(ipc->ArpTable, &t);

 return a;
}
