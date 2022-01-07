
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_24__ {TYPE_1__* Server; } ;
struct TYPE_23__ {TYPE_4__* impl; } ;
struct TYPE_22__ {int (* SupportedModes ) () ;int (* Init ) (void**,TYPE_6__*,int *,int *) ;int (* ProcessData ) (void*,TYPE_2__*,int *) ;int (* IsOk ) (void*) ;scalar_t__ (* EstablishedSessions ) (void*) ;int (* Free ) (void*) ;int (* BufferLimit ) (void*,int) ;int (* Name ) () ;} ;
struct TYPE_21__ {int LocalPort; int LocalIP; int RemotePort; int RemoteIP; } ;
struct TYPE_20__ {int Data; } ;
struct TYPE_19__ {int DisableOpenVPNServer; } ;
typedef TYPE_2__ TCP_RAW_DATA ;
typedef int SOCK_EVENT ;
typedef TYPE_3__ SOCK ;
typedef TYPE_4__ PROTO_IMPL ;
typedef TYPE_5__ PROTO ;
typedef int INTERRUPT_MANAGER ;
typedef int FIFO ;
typedef TYPE_6__ CEDAR ;


 int Debug (char*,...) ;
 int FifoPtr (int *) ;
 int FifoSize (int *) ;
 int Free (int *) ;
 int FreeInterruptManager (int *) ;
 int FreeTcpRawData (TYPE_2__*) ;
 scalar_t__ GetNextIntervalForInterrupt (int *) ;
 int JoinSockToSockEvent (TYPE_3__*,int *) ;
 int MAX_BUFFERING_PACKET_SIZE ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int * Malloc (int ) ;
 int * NewFifoFast () ;
 int * NewInterruptManager () ;
 int * NewSockEvent () ;
 TYPE_2__* NewTcpRawData (int *,int ,int *,int ) ;
 scalar_t__ OPENVPN_NEW_SESSION_DEADLINE_TIMEOUT ;
 int PROTO_MODE_TCP ;
 int PROTO_TCP_BUFFER_SIZE ;
 TYPE_5__* ProtoDetect (TYPE_3__*) ;
 int ReadFifo (int *,int *,scalar_t__ const) ;
 scalar_t__ Recv (TYPE_3__*,int *,int ,int) ;
 int ReleaseFifo (int *) ;
 int ReleaseSockEvent (int *) ;
 scalar_t__ const SOCK_LATER ;
 scalar_t__ Send (TYPE_3__*,int ,int,int) ;
 int SetTimeout (TYPE_3__*,int ) ;
 scalar_t__ StrCmp (int ,char*) ;
 int TIMEOUT_INFINITE ;
 scalar_t__ const Tick64 () ;
 int UDPLISTENER_WAIT_INTERVAL ;
 int WaitSockEvent (int *,scalar_t__) ;
 int WriteFifo (int ,int *,scalar_t__ const) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 (void**,TYPE_6__*,int *,int *) ;
 int stub4 () ;
 int stub5 (void*,TYPE_2__*,int *) ;
 int stub6 (void*,int) ;
 int stub7 (void*) ;
 scalar_t__ stub8 (void*) ;
 int stub9 (void*) ;

bool ProtoHandleConnection(CEDAR *cedar, SOCK *sock)
{
 void *impl_data;
 const PROTO_IMPL *impl;
 const PROTO *proto;

 UCHAR *buf;
 TCP_RAW_DATA *recv_raw_data;
 FIFO *send_fifo;
 INTERRUPT_MANAGER *im;
 SOCK_EVENT *se;

 const UINT64 giveup = Tick64() + (UINT64)OPENVPN_NEW_SESSION_DEADLINE_TIMEOUT;

 if (cedar == ((void*)0) || sock == ((void*)0))
 {
  return 0;
 }

 proto = ProtoDetect(sock);

 if (proto == ((void*)0))
 {
  Debug("ProtoHandleConnection(): unrecognized protocol\n");
  return 0;
 }

 impl = proto->impl;

 if (StrCmp(impl->Name(), "OpenVPN") == 0 && cedar->Server->DisableOpenVPNServer == 1)
 {
  Debug("ProtoHandleConnection(): OpenVPN detected, but it's disabled\n");
  return 0;
 }

 if ((impl->SupportedModes() & PROTO_MODE_TCP) == 0)
 {
  return 0;
 }

 im = NewInterruptManager();
 se = NewSockEvent();

 if (impl->Init != ((void*)0) && impl->Init(&impl_data, cedar, im, se) == 0)
 {
  Debug("ProtoHandleConnection(): failed to initialize %s\n", impl->Name());
  FreeInterruptManager(im);
  ReleaseSockEvent(se);
  return 0;
 }

 SetTimeout(sock, TIMEOUT_INFINITE);
 JoinSockToSockEvent(sock, se);

 recv_raw_data = NewTcpRawData(&sock->RemoteIP, sock->RemotePort, &sock->LocalIP, sock->LocalPort);
 send_fifo = NewFifoFast();

 buf = Malloc(PROTO_TCP_BUFFER_SIZE);

 Debug("ProtoHandleConnection(): entering main loop\n");


 while (1)
 {
  UINT next_interval;
  bool stop = 0;

  while (1)
  {
   const UINT ret = Recv(sock, buf, PROTO_TCP_BUFFER_SIZE, 0);

   if (ret == SOCK_LATER)
   {

    break;
   }
   else if (ret == 0)
   {

    stop = 1;
    break;
   }
   else
   {

    WriteFifo(recv_raw_data->Data, buf, ret);
   }
  }

  if (impl->ProcessData(impl_data, recv_raw_data, send_fifo) == 0)
  {
   stop = 1;
  }


  while (FifoSize(send_fifo) >= 1)
  {
   const UINT ret = Send(sock, FifoPtr(send_fifo), FifoSize(send_fifo), 0);

   if (ret == SOCK_LATER)
   {

    break;
   }
   else if (ret == 0)
   {

    stop = 1;
    break;
   }
   else
   {

    ReadFifo(send_fifo, ((void*)0), ret);
   }
  }

  impl->BufferLimit(impl_data, FifoSize(send_fifo) > MAX_BUFFERING_PACKET_SIZE);

  if (impl->IsOk(impl_data) == 0)
  {
   if (impl->EstablishedSessions(impl_data) == 0)
   {
    if (Tick64() >= giveup)
    {
     Debug("ProtoHandleConnection(): I waited too much for the session to start, I give up!\n");
     stop = 1;
    }
   }
   else
   {
    Debug("ProtoHandleConnection(): implementation not OK, stopping the server\n");
    stop = 1;
   }
  }

  if (stop)
  {

   Debug("ProtoHandleConnection(): breaking main loop\n");
   break;
  }


  next_interval = GetNextIntervalForInterrupt(im);
  next_interval = MIN(next_interval, UDPLISTENER_WAIT_INTERVAL);
  WaitSockEvent(se, next_interval);
 }

 impl->Free(impl_data);

 FreeInterruptManager(im);
 ReleaseSockEvent(se);
 FreeTcpRawData(recv_raw_data);
 ReleaseFifo(send_fifo);
 Free(buf);

 return 1;
}
