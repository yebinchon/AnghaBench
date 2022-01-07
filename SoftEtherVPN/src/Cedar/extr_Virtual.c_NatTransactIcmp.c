
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_20__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_25__ {int NatDoCancelFlag; scalar_t__ Now; void* TmpBuf; int SockEvent; scalar_t__ IcmpRawSocketOk; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_31__ {int IgnoreRecvErr; int IgnoreSendErr; int LocalPort; int LocalIP; } ;
struct TYPE_30__ {int Size; int Buf; int Ttl; } ;
struct TYPE_29__ {int DataSize; scalar_t__ Data; int IpAddress; scalar_t__ Ok; } ;
struct TYPE_28__ {scalar_t__ DstIP; } ;
struct TYPE_27__ {scalar_t__ DestPort; int UdpSocketCreated; scalar_t__ LastCommTime; scalar_t__ DestIp; int * IcmpThread; TYPE_6__* Sock; TYPE_20__* UdpSendQueue; int UdpRecvQueue; int SrcPort; TYPE_5__* IcmpResponseBlock; scalar_t__ IcmpTaskFinished; TYPE_5__* IcmpQueryBlock; int PublicPort; int PublicIp; scalar_t__ DisconnectNow; } ;
struct TYPE_26__ {int num_item; } ;
typedef TYPE_2__ NAT_ENTRY ;
typedef TYPE_3__ IPV4_HEADER ;
typedef int IP ;
typedef TYPE_4__ ICMP_RESULT ;
typedef TYPE_5__ BLOCK ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 int Copy (void*,void*,scalar_t__) ;
 int Debug (char*) ;
 int DeleteNatIcmp (TYPE_1__*,TYPE_2__*) ;
 int Disconnect (TYPE_6__*) ;
 int FreeBlock (TYPE_5__*) ;
 TYPE_5__* GetNext (TYPE_20__*) ;
 int INFINITE ;
 int IPToUINT (int *) ;
 int IP_PROTO_ICMPV4 ;
 int IcmpFreeResult (TYPE_4__*) ;
 TYPE_4__* IcmpParseResult (int *,int ,int ,void*,scalar_t__) ;
 int InsertQueue (int ,TYPE_5__*) ;
 int JoinSockToSockEvent (TYPE_6__*,int ) ;
 int MAKE_SPECIAL_PORT (int ) ;
 scalar_t__ MAX_NUM_IGNORE_ERRORS ;
 void* Malloc (scalar_t__) ;
 scalar_t__ NAT_ICMP_TIMEOUT ;
 scalar_t__ NAT_ICMP_TIMEOUT_WITH_API ;
 int NatIcmpThreadProc ;
 TYPE_5__* NewBlock (void*,scalar_t__,int ) ;
 int * NewThread (int ,TYPE_2__*) ;
 TYPE_6__* NewUDP (int ) ;
 scalar_t__ RecvFrom (TYPE_6__*,int *,scalar_t__*,void*,int) ;
 int ReleaseSock (TYPE_6__*) ;
 int ReleaseThread (int *) ;
 scalar_t__ SOCK_LATER ;
 scalar_t__ SendTo (TYPE_6__*,int *,scalar_t__,int ,int ) ;
 int SetTtl (TYPE_6__*,int ) ;
 int UINTToIP (int *,scalar_t__) ;
 int WaitThread (int *,int ) ;

bool NatTransactIcmp(VH *v, NAT_ENTRY *n)
{
 void *buf;
 UINT recv_size;
 BLOCK *block;
 IP dest_ip;
 UINT num_ignore_errors = 0;
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

 if (v->IcmpRawSocketOk)
 {

  if (n->UdpSocketCreated == 0)
  {

   n->Sock = NewUDP(MAKE_SPECIAL_PORT(IP_PROTO_ICMPV4));
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
 }
 else
 {

  if (n->IcmpThread == ((void*)0))
  {
   if (n->UdpSendQueue->num_item >= 1)
   {


    BLOCK *block = GetNext(n->UdpSendQueue);

    n->IcmpQueryBlock = block;

    n->IcmpThread = NewThread(NatIcmpThreadProc, n);
   }
  }

  if (n->IcmpTaskFinished)
  {
   if (n->IcmpResponseBlock != ((void*)0))
   {

    block = n->IcmpResponseBlock;
    n->IcmpResponseBlock = ((void*)0);
    InsertQueue(n->UdpRecvQueue, block);
    v->NatDoCancelFlag = 1;
    n->LastCommTime = v->Now;
   }
   else
   {

    goto DISCONNECT;
   }
  }


  if ((n->LastCommTime + (UINT64)NAT_ICMP_TIMEOUT_WITH_API) < v->Now || n->LastCommTime > v->Now)
  {

   goto DISCONNECT;
  }

  return 1;
 }


 buf = v->TmpBuf;
 UINTToIP(&dest_ip, n->DestIp);


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
   Debug("ICMP ERROR\n");

   if (n->Sock->IgnoreRecvErr == 0)
   {

    goto DISCONNECT;
   }
   else
   {
    if ((num_ignore_errors++) >= MAX_NUM_IGNORE_ERRORS)
    {
     goto DISCONNECT;
    }
   }
  }
  else
  {

   ICMP_RESULT *ret = IcmpParseResult(&dest_ip, n->SrcPort, 0, buf, recv_size);

   if (ret != ((void*)0))
   {
    if ((ret->Ok && CmpIpAddr(&ret->IpAddress, &dest_ip) == 0) ||
     (ret->DataSize >= sizeof(IPV4_HEADER) && ((IPV4_HEADER *)ret->Data)->DstIP == n->DestIp))
    {

     void *data = Malloc(recv_size);
     Copy(data, buf, recv_size);
     block = NewBlock(data, recv_size, 0);
     InsertQueue(n->UdpRecvQueue, block);
     v->NatDoCancelFlag = 1;
     n->LastCommTime = v->Now;
    }

    IcmpFreeResult(ret);
   }
  }
 }


 while (block = GetNext(n->UdpSendQueue))
 {

  UINT send_size;

  SetTtl(n->Sock, block->Ttl);
  send_size = SendTo(n->Sock, &dest_ip, dest_port, block->Buf, block->Size);

  FreeBlock(block);
  if (send_size == 0)
  {
   Debug("ICMP ERROR\n");

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


 if ((n->LastCommTime + (UINT64)NAT_ICMP_TIMEOUT) < v->Now || n->LastCommTime > v->Now)
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


 if (n->IcmpThread != ((void*)0))
 {
  WaitThread(n->IcmpThread, INFINITE);
  ReleaseThread(n->IcmpThread);
  n->IcmpThread = ((void*)0);
 }


 DeleteNatIcmp(v, n);

 return 0;
}
