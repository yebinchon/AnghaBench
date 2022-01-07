
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef int UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_20__ {int Size; int* Buf; } ;
struct TYPE_19__ {int* addr; } ;
struct TYPE_18__ {int IPv4ReceivedQueue; TYPE_2__ ClientIPAddress; TYPE_2__ BroadcastAddress; int MacAddress; } ;
typedef TYPE_1__ IPC ;
typedef TYPE_2__ IP ;
typedef TYPE_3__ BLOCK ;


 int* Clone (int*,int) ;
 scalar_t__ Cmp (int*,int ,int) ;
 scalar_t__ CmpIpAddr (TYPE_2__*,TYPE_2__*) ;
 int Free (int*) ;
 int FreeBlock (TYPE_3__*) ;
 int IPCAssociateOnArpTable (TYPE_1__*,TYPE_2__*,int*) ;
 int IPCFlushArpTableEx (TYPE_1__*,int ) ;
 int IPCProcessArp (TYPE_1__*,TYPE_3__*) ;
 int IPCProcessInterrupts (TYPE_1__*) ;
 TYPE_3__* IPCRecvL2 (TYPE_1__*) ;
 int InsertQueue (int ,int ) ;
 scalar_t__ IsValidUnicastMacAddress (int*) ;
 scalar_t__ IsZeroIP (TYPE_2__*) ;
 scalar_t__ MAC_PROTO_ARPV4 ;
 scalar_t__ MAC_PROTO_IPV4 ;
 int NewBlock (int*,int,int ) ;
 scalar_t__ READ_USHORT (int*) ;
 int Tick64 () ;
 int UINTToIP (TYPE_2__*,int) ;

void IPCProcessL3EventsEx(IPC *ipc, UINT64 now)
{

 if (ipc == ((void*)0))
 {
  return;
 }
 if (now == 0)
 {
  now = Tick64();
 }


 IPCFlushArpTableEx(ipc, now);


 while (1)
 {
  BLOCK *b = IPCRecvL2(ipc);
  if (b == ((void*)0))
  {

   break;
  }

  if (b->Size >= 14)
  {
   UCHAR *dest_mac = b->Buf + 0;
   UCHAR *src_mac = b->Buf + 6;
   USHORT protocol = READ_USHORT(b->Buf + 12);



   if (Cmp(dest_mac, ipc->MacAddress, 6) == 0 || dest_mac[0] & 0x01)
   {

    if (Cmp(src_mac, ipc->MacAddress, 6) != 0 && IsValidUnicastMacAddress(src_mac))
    {
     if (protocol == MAC_PROTO_ARPV4)
     {

      IPCProcessArp(ipc, b);
     }
     else if (protocol == MAC_PROTO_IPV4)
     {

      if (b->Size >= (14 + 20))
      {
       UCHAR *data = Clone(b->Buf + 14, b->Size - 14);
       UINT size = b->Size - 14;
       IP ip_src, ip_dst;
       bool ok = 0;


       UINTToIP(&ip_src, *((UINT *)(((UCHAR *)data) + 12)));
       UINTToIP(&ip_dst, *((UINT *)(((UCHAR *)data) + 16)));



       if (CmpIpAddr(&ip_dst, &ipc->ClientIPAddress) == 0)
       {
        ok = 1;
       }
       else if (ip_dst.addr[0] == 255 && ip_dst.addr[1] == 255 &&
        ip_dst.addr[2] == 255 && ip_dst.addr[3] == 255)
       {
        ok = 1;
       }
       else if (ip_dst.addr[0] >= 224 && ip_dst.addr[0] <= 239)
       {
        ok = 1;
       }
       else
       {
        if (CmpIpAddr(&ipc->BroadcastAddress, &ip_dst) == 0)
        {
         ok = 1;
        }

        if (IsZeroIP(&ipc->ClientIPAddress))
        {

         ok = 1;
        }
       }

       if (ok)
       {
        IPCAssociateOnArpTable(ipc, &ip_src, src_mac);


        InsertQueue(ipc->IPv4ReceivedQueue, NewBlock(data, size, 0));
       }
       else
       {

        Free(data);
       }
      }
     }
    }
   }
  }

  FreeBlock(b);
 }

 IPCProcessInterrupts(ipc);
}
