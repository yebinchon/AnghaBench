
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int NatDoCancelFlag; scalar_t__ Now; scalar_t__ NatUdpTimeout; void* TmpBuf; int SockEvent; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_23__ {int IgnoreRecvErr; int IgnoreSendErr; scalar_t__ LocalPort; int LocalIP; } ;
struct TYPE_22__ {int Size; scalar_t__ Buf; scalar_t__ Param1; } ;
struct TYPE_21__ {scalar_t__ DestPort; int UdpSocketCreated; int ProxyDns; scalar_t__ DestIp; scalar_t__ DestIpProxy; scalar_t__ LastCommTime; scalar_t__ SrcIp; scalar_t__ SrcPort; TYPE_5__* Sock; scalar_t__ PublicPort; int UdpSendQueue; int UdpRecvQueue; scalar_t__ PublicIp; scalar_t__ DisconnectNow; } ;
struct TYPE_20__ {scalar_t__ SrcIP; scalar_t__ SrcPort; } ;
typedef TYPE_2__ NBTDG_HEADER ;
typedef TYPE_3__ NAT_ENTRY ;
typedef int LIST ;
typedef int IP ;
typedef TYPE_4__ BLOCK ;


 int Copy (void*,void*,scalar_t__) ;
 int DeleteNatUdp (TYPE_1__*,TYPE_3__*) ;
 int Disconnect (TYPE_5__*) ;
 scalar_t__ Endian16 (scalar_t__) ;
 int FreeBlock (TYPE_4__*) ;
 int FreeHostIPAddressList (int *) ;
 int * GetHostIPAddressList () ;
 TYPE_4__* GetNext (int ) ;
 scalar_t__ IPToUINT (int *) ;
 int InsertQueue (int ,TYPE_4__*) ;
 scalar_t__ IsIP4 (int *) ;
 int IsLocalHostIP (int *) ;
 int IsZeroIp (int *) ;
 int JoinSockToSockEvent (TYPE_5__*,int ) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 scalar_t__ MAX_NUM_IGNORE_ERRORS ;
 void* Malloc (scalar_t__) ;
 TYPE_4__* NewBlock (void*,scalar_t__,int ) ;
 TYPE_5__* NewUDP (int ) ;
 scalar_t__ RecvFrom (TYPE_5__*,int *,scalar_t__*,void*,int) ;
 int ReleaseSock (TYPE_5__*) ;
 scalar_t__ SOCK_LATER ;
 scalar_t__ SPECIAL_UDP_PORT_NBTDGM ;
 scalar_t__ SPECIAL_UDP_PORT_SSDP ;
 scalar_t__ SPECIAL_UDP_PORT_WSD ;
 scalar_t__ SendTo (TYPE_5__*,int *,scalar_t__,scalar_t__,int) ;
 int UINTToIP (int *,scalar_t__) ;

bool NatTransactUdp(VH *v, NAT_ENTRY *n)
{
 void *buf;
 UINT recv_size;
 BLOCK *block;
 IP dest_ip;
 UINT num_ignore_errors;
 UINT dest_port = 0;

 if (v == ((void*)0) || n == ((void*)0))
 {
  return 1;
 }

 dest_port = n->DestPort;

 if (n->DisconnectNow)
 {
  goto DISCONNECT;
 }

 if (n->UdpSocketCreated == 0)
 {

  n->Sock = NewUDP(0);
  if (n->Sock == ((void*)0))
  {

   goto DISCONNECT;
  }
  else
  {
   n->PublicIp = IPToUINT(&n->Sock->LocalIP);
   n->PublicPort = n->Sock->LocalPort;

   JoinSockToSockEvent(n->Sock, v->SockEvent);
   n->UdpSocketCreated = 1;
  }
 }

 buf = v->TmpBuf;
 if (n->ProxyDns == 0)
 {
  UINTToIP(&dest_ip, n->DestIp);
 }
 else
 {
  UINTToIP(&dest_ip, n->DestIpProxy);
 }

 num_ignore_errors = 0;


 while (1)
 {
  IP src_ip;
  UINT src_port;
  recv_size = RecvFrom(n->Sock, &src_ip, &src_port, buf, 65536);

  if (recv_size == SOCK_LATER)
  {

   break;
  }
  else if (recv_size == 0)
  {

   if (n->Sock->IgnoreRecvErr == 0)
   {

    goto DISCONNECT;
   }
   else
   {
    if ((num_ignore_errors++) > MAX_NUM_IGNORE_ERRORS)
    {
     goto DISCONNECT;
    }
   }
  }
  else
  {

   if (IPToUINT(&src_ip) == n->DestIp || n->DestIp == 0xFFFFFFFF || (IPToUINT(&src_ip) == n->DestIpProxy && n->ProxyDns) && src_port == n->DestPort)
   {

    void *data = Malloc(recv_size);
    Copy(data, buf, recv_size);
    block = NewBlock(data, recv_size, 0);

    if (block != ((void*)0))
    {
     if (src_port == SPECIAL_UDP_PORT_WSD || src_port == SPECIAL_UDP_PORT_SSDP)
     {

      block->Param1 = IPToUINT(&src_ip);
     }
    }

    InsertQueue(n->UdpRecvQueue, block);
    v->NatDoCancelFlag = 1;
    n->LastCommTime = v->Now;
   }
  }
 }


 while (block = GetNext(n->UdpSendQueue))
 {
  UINT send_size;
  bool is_nbtdgm = 0;
  LIST *local_ip_list = ((void*)0);

  if (dest_port == SPECIAL_UDP_PORT_NBTDGM)
  {

   NBTDG_HEADER *nh = (NBTDG_HEADER *)block->Buf;

   if (nh != ((void*)0) && block->Size >= sizeof(NBTDG_HEADER))
   {
    if (nh->SrcIP == n->SrcIp && Endian16(nh->SrcPort) == n->SrcPort)
    {
     local_ip_list = GetHostIPAddressList();

     if (local_ip_list != ((void*)0))
     {
      is_nbtdgm = 1;
     }
    }
   }
  }

  if (is_nbtdgm == 0)
  {

   send_size = SendTo(n->Sock, &dest_ip, dest_port, block->Buf, block->Size);
  }
  else
  {


   UINT i;

   for (i = 0;i < LIST_NUM(local_ip_list);i++)
   {
    IP *my_ip = LIST_DATA(local_ip_list, i);

    if (IsIP4(my_ip) && IsZeroIp(my_ip) == 0 && IsLocalHostIP(my_ip) == 0)
    {
     NBTDG_HEADER *nh = (NBTDG_HEADER *)block->Buf;

     nh->SrcIP = IPToUINT(my_ip);
     nh->SrcPort = Endian16(n->PublicPort);

     send_size = SendTo(n->Sock, &dest_ip, dest_port, block->Buf, block->Size);
    }
   }
  }

  if (local_ip_list != ((void*)0))
  {
   FreeHostIPAddressList(local_ip_list);
  }

  FreeBlock(block);
  if (send_size == 0)
  {

   if (n->Sock->IgnoreSendErr == 0)
   {

    goto DISCONNECT;
   }
  }
  else
  {
   n->LastCommTime = v->Now;
  }
 }


 if ((n->LastCommTime + (UINT64)v->NatUdpTimeout) < v->Now || n->LastCommTime > v->Now)
 {

  goto DISCONNECT;
 }

 return 1;

DISCONNECT:

 if (n->UdpSocketCreated)
 {

  Disconnect(n->Sock);
  ReleaseSock(n->Sock);
  n->Sock = ((void*)0);
 }


 DeleteNatUdp(v, n);

 return 0;
}
