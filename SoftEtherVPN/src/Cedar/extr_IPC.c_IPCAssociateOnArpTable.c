
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UCHAR ;
struct TYPE_14__ {int Size; int Buf; } ;
struct TYPE_13__ {int ArpTable; int BroadcastAddress; int SubnetMask; int ClientIPAddress; int MacAddress; } ;
struct TYPE_12__ {int Resolved; scalar_t__ ExpireTime; int MacAddress; int PacketQueue; scalar_t__ GiveupTime; } ;
typedef TYPE_1__ IPC_ARP ;
typedef TYPE_2__ IPC ;
typedef int IP ;
typedef TYPE_3__ BLOCK ;


 scalar_t__ Cmp (int ,int *,int) ;
 scalar_t__ CmpIpAddr (int *,int *) ;
 int Copy (int ,int *,int) ;
 int FreeBlock (TYPE_3__*) ;
 TYPE_3__* GetNext (int ) ;
 TYPE_1__* IPCNewARP (int *,int *) ;
 TYPE_1__* IPCSearchArpTable (TYPE_2__*,int *) ;
 int IPCSendIPv4WithDestMacAddr (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ IPC_ARP_LIFETIME ;
 int Insert (int ,TYPE_1__*) ;
 int IsInSameNetwork4 (int *,int *,int *) ;
 int IsValidUnicastIPAddress4 (int *) ;
 int IsValidUnicastMacAddress (int *) ;
 scalar_t__ Tick64 () ;

void IPCAssociateOnArpTable(IPC *ipc, IP *ip, UCHAR *mac_address)
{
 IPC_ARP *a;

 if (ipc == ((void*)0) || ip == ((void*)0) || IsValidUnicastIPAddress4(ip) == 0 || IsValidUnicastMacAddress(mac_address) == 0)
 {
  return;
 }
 if (CmpIpAddr(&ipc->ClientIPAddress, ip) == 0 || Cmp(ipc->MacAddress, mac_address, 6) == 0)
 {
  return;
 }
 if (IsInSameNetwork4(ip, &ipc->ClientIPAddress, &ipc->SubnetMask) == 0)
 {

  return;
 }

 if (CmpIpAddr(&ipc->BroadcastAddress, ip) == 0)
 {

  return;
 }


 a = IPCSearchArpTable(ipc, ip);
 if (a == ((void*)0))
 {

  a = IPCNewARP(ip, mac_address);

  Insert(ipc->ArpTable, a);
 }
 else
 {
  Copy(a->MacAddress, mac_address, 6);


  if (a->Resolved == 0)
  {
   a->Resolved = 1;
   a->GiveupTime = 0;


   while (1)
   {
    BLOCK *b = GetNext(a->PacketQueue);

    if (b == ((void*)0))
    {
     break;
    }

    IPCSendIPv4WithDestMacAddr(ipc, b->Buf, b->Size, a->MacAddress);

    FreeBlock(b);
   }
  }


  a->ExpireTime = Tick64() + (UINT64)IPC_ARP_LIFETIME;
 }
}
