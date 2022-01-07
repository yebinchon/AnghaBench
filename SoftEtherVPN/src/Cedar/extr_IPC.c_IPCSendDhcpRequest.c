
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_25__ {int Size; int Buf; } ;
struct TYPE_24__ {int Size; int Buf; } ;
struct TYPE_23__ {scalar_t__ OpCode; TYPE_1__* Header; } ;
struct TYPE_22__ {int Interrupt; TYPE_2__* Sock; } ;
struct TYPE_21__ {int * SendTube; int * RecvTube; } ;
struct TYPE_20__ {int TransactionId; } ;
typedef int TUBE ;
typedef int PKT ;
typedef TYPE_3__ IPC ;
typedef int IP ;
typedef int DHCP_OPTION_LIST ;
typedef TYPE_4__ DHCPV4_DATA ;
typedef TYPE_5__ BUF ;
typedef TYPE_6__ BLOCK ;


 int AddInterrupt (int ,scalar_t__) ;
 scalar_t__ Endian32 (int ) ;
 int FreeBlock (TYPE_6__*) ;
 int FreeBuf (TYPE_5__*) ;
 int FreeDHCPv4Data (TYPE_4__*) ;
 int FreePacketWithData (int *) ;
 int GetNextIntervalForInterrupt (int ) ;
 TYPE_5__* IPCBuildDhcpRequest (TYPE_3__*,int *,scalar_t__,int *) ;
 int IPCFlushArpTable (TYPE_3__*) ;
 int IPCProcessL3Events (TYPE_3__*) ;
 TYPE_6__* IPCRecvIPv4 (TYPE_3__*) ;
 int IPCSendIPv4 (TYPE_3__*,int ,int ) ;
 int IsTubeConnected (int *) ;
 scalar_t__ MAX (int,scalar_t__) ;
 TYPE_4__* ParseDHCPv4Data (int *) ;
 int * ParsePacketIPv4WithDummyMacHeader (int ,int ) ;
 scalar_t__ Tick64 () ;
 int WaitForTubes (int **,scalar_t__,int ) ;

DHCPV4_DATA *IPCSendDhcpRequest(IPC *ipc, IP *dest_ip, UINT tran_id, DHCP_OPTION_LIST *opt, UINT expecting_code, UINT timeout, TUBE *discon_poll_tube)
{
 UINT resend_interval;
 UINT64 giveup_time;
 UINT64 next_send_time = 0;
 TUBE *tubes[3];
 UINT num_tubes = 0;

 if (ipc == ((void*)0) || opt == ((void*)0) || (expecting_code != 0 && timeout == 0))
 {
  return ((void*)0);
 }


 resend_interval = MAX(1, (timeout / 3) - 100);


 giveup_time = Tick64() + (UINT64)timeout;

 AddInterrupt(ipc->Interrupt, giveup_time);

 tubes[num_tubes++] = ipc->Sock->RecvTube;
 tubes[num_tubes++] = ipc->Sock->SendTube;

 if (discon_poll_tube != ((void*)0))
 {
  tubes[num_tubes++] = discon_poll_tube;
 }

 while (1)
 {
  UINT64 now = Tick64();
  BUF *dhcp_packet;

  IPCFlushArpTable(ipc);


  if ((expecting_code != 0) && (now >= giveup_time))
  {
   return ((void*)0);
  }


  if (next_send_time == 0 || next_send_time <= now)
  {
   dhcp_packet = IPCBuildDhcpRequest(ipc, dest_ip, tran_id, opt);
   if (dhcp_packet == ((void*)0))
   {
    return ((void*)0);
   }

   IPCSendIPv4(ipc, dhcp_packet->Buf, dhcp_packet->Size);

   FreeBuf(dhcp_packet);

   if (expecting_code == 0)
   {
    return ((void*)0);
   }

   next_send_time = now + (UINT64)resend_interval;

   AddInterrupt(ipc->Interrupt, next_send_time);
  }


  IPCProcessL3Events(ipc);

  while (1)
  {

   BLOCK *b = IPCRecvIPv4(ipc);
   PKT *pkt;
   DHCPV4_DATA *dhcp;

   if (b == ((void*)0))
   {
    break;
   }


   pkt = ParsePacketIPv4WithDummyMacHeader(b->Buf, b->Size);

   dhcp = ParseDHCPv4Data(pkt);

   if (dhcp != ((void*)0))
   {
    if (Endian32(dhcp->Header->TransactionId) == tran_id && dhcp->OpCode == expecting_code)
    {

     FreePacketWithData(pkt);
     FreeBlock(b);

     return dhcp;
    }

    FreeDHCPv4Data(dhcp);
   }

   FreePacketWithData(pkt);

   FreeBlock(b);
  }

  if (IsTubeConnected(ipc->Sock->RecvTube) == 0 || IsTubeConnected(ipc->Sock->SendTube) == 0 ||
   (discon_poll_tube != ((void*)0) && IsTubeConnected(discon_poll_tube) == 0))
  {

   return ((void*)0);
  }


  WaitForTubes(tubes, num_tubes, GetNextIntervalForInterrupt(ipc->Interrupt));
 }

 return ((void*)0);
}
