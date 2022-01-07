
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int str ;
struct TYPE_17__ {int NatDoCancelFlag; scalar_t__ Now; scalar_t__ NatTcpTimeout; scalar_t__ TmpBuf; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_21__ {int size; int pos; scalar_t__ p; } ;
struct TYPE_20__ {int RemoteHostname; } ;
struct TYPE_19__ {scalar_t__ size; } ;
struct TYPE_18__ {int TcpStatus; int TcpFinished; int SendAckNext; int TcpDisconnected; scalar_t__ TcpLastRecvAckTime; scalar_t__ LastCommTime; int TcpSendWindowSize; TYPE_3__* SendFifo; TYPE_4__* Sock; int test_TotalSent; int DestPort; int Id; int DestIp; TYPE_7__* RecvFifo; int TcpMakeConnectionSucceed; int * NatTcpConnectThread; int TcpMakeConnectionFailed; scalar_t__ DisconnectNow; } ;
typedef TYPE_2__ NAT_ENTRY ;
typedef int IP ;


 int CreateNatTcpConnectThread (TYPE_1__*,TYPE_2__*) ;
 int Debug (char*,int ,int *,int ,int ) ;
 int DeleteNatTcp (TYPE_1__*,TYPE_2__*) ;
 int Disconnect (TYPE_4__*) ;
 int FifoSize (TYPE_3__*) ;
 int INFINITE ;
 int IPToStr32 (char*,int,int ) ;
 int MAX_SIZE ;
 int MIN (scalar_t__,int ) ;
 scalar_t__ NAT_SEND_BUF_SIZE ;




 int NAT_TMPBUF_SIZE ;
 int NLog (TYPE_1__*,char*,int ,char*,char*,...) ;
 int ReadFifo (TYPE_7__*,int *,int ) ;
 int Recv (TYPE_4__*,void*,int ,int) ;
 int ReleaseThread (int *) ;
 int SOCK_LATER ;
 int Send (TYPE_4__*,int *,int ,int) ;
 int SetNoNeedToRead (TYPE_4__*) ;
 int UINTToIP (int *,int ) ;
 scalar_t__ VIRTUAL_TCP_SEND_TIMEOUT ;
 int WaitThread (int *,int ) ;
 int WriteFifo (TYPE_3__*,void*,int ) ;

bool NatTransactTcp(VH *v, NAT_ENTRY *n)
{
 char str[MAX_SIZE];
 bool timeouted = 0;

 if (v == ((void*)0) || n == ((void*)0))
 {
  return 0;
 }

 if (n->DisconnectNow)
 {
  goto DISCONNECT;
 }


 switch (n->TcpStatus)
 {
 case 130:
  if (n->NatTcpConnectThread == ((void*)0))
  {

   CreateNatTcpConnectThread(v, n);
  }
  else
  {

   if (n->TcpMakeConnectionFailed || n->TcpMakeConnectionSucceed)
   {

    WaitThread(n->NatTcpConnectThread, INFINITE);
    ReleaseThread(n->NatTcpConnectThread);
    n->NatTcpConnectThread = ((void*)0);

    if (n->TcpMakeConnectionSucceed)
    {

     n->TcpStatus = 131;
     IPToStr32(str, sizeof(str), n->DestIp);
     NLog(v, "LH_NAT_TCP_SUCCEED", n->Id, n->Sock->RemoteHostname, str, n->DestPort);
    }
    else
    {

     n->TcpStatus = 128;
     IPToStr32(str, sizeof(str), n->DestIp);
     NLog(v, "LH_NAT_TCP_FAILED", n->Id, str, n->DestPort);
    }
    v->NatDoCancelFlag = 1;
   }
  }
  break;

 case 131:
  break;

 case 128:
  break;

 case 129:
  {
   UINT old_send_fifo_size = 0;


   while (n->RecvFifo->size > 0)
   {
    UINT sent_size = Send(n->Sock, ((UCHAR *)n->RecvFifo->p) + n->RecvFifo->pos,
     n->RecvFifo->size, 0);
    if (sent_size == 0)
    {

     n->TcpFinished = 1;
     v->NatDoCancelFlag = 1;
     break;
    }
    else if (sent_size == SOCK_LATER)
    {

     break;
    }
    else
    {

     ReadFifo(n->RecvFifo, ((void*)0), sent_size);
     n->SendAckNext = 1;

     if (0)
     {
      IP ip;

      n->test_TotalSent += sent_size;

      UINTToIP(&ip, n->DestIp);
      Debug("TCP %u: %r:%u %u\n", n->Id, &ip, n->DestPort, (UINT)n->test_TotalSent);
     }
    }
   }

   old_send_fifo_size = FifoSize(n->SendFifo);


   while (1)
   {
    void *buf = (void *)v->TmpBuf;
    UINT want_to_recv_size = 0;
    UINT recv_size;

    if (n->SendFifo->size < NAT_SEND_BUF_SIZE)
    {

     want_to_recv_size = MIN(NAT_SEND_BUF_SIZE - n->SendFifo->size, NAT_TMPBUF_SIZE);
    }
    if (want_to_recv_size == 0)
    {
     SetNoNeedToRead(n->Sock);
     break;
    }
    recv_size = Recv(n->Sock, buf, want_to_recv_size, 0);
    if (recv_size == 0)
    {

     n->TcpFinished = 1;
     v->NatDoCancelFlag = 1;
     if (n->TcpDisconnected == 0)
     {
      Disconnect(n->Sock);
      n->TcpDisconnected = 1;
     }
     break;
    }
    else if (recv_size == SOCK_LATER)
    {

     break;
    }
    else
    {

     WriteFifo(n->SendFifo, buf, recv_size);
     v->NatDoCancelFlag = 1;
    }
   }

   if (old_send_fifo_size == 0 && FifoSize(n->SendFifo) != 0)
   {


    n->TcpLastRecvAckTime = v->Now;
   }




   if ((n->TcpLastRecvAckTime + (UINT64)VIRTUAL_TCP_SEND_TIMEOUT) < v->Now)
   {
    if (FifoSize(n->SendFifo) != 0 && n->TcpSendWindowSize != 0)
    {
     timeouted = 1;
    }
   }
  }
  break;

 }


 if ((n->LastCommTime + (UINT64)v->NatTcpTimeout) < v->Now || n->LastCommTime > v->Now)
 {
  timeouted = 1;
 }

 if (timeouted)
 {

  n->TcpStatus = 128;
  v->NatDoCancelFlag = 1;
 }

 return 1;

DISCONNECT:
 DeleteNatTcp(v, n);

 return 0;
}
