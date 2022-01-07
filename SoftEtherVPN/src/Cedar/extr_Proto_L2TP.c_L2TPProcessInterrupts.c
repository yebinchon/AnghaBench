
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_55__ TYPE_9__ ;
typedef struct TYPE_54__ TYPE_8__ ;
typedef struct TYPE_53__ TYPE_7__ ;
typedef struct TYPE_52__ TYPE_6__ ;
typedef struct TYPE_51__ TYPE_5__ ;
typedef struct TYPE_50__ TYPE_3__ ;
typedef struct TYPE_49__ TYPE_39__ ;
typedef struct TYPE_48__ TYPE_2__ ;
typedef struct TYPE_47__ TYPE_1__ ;


typedef int error_data ;
typedef scalar_t__ USHORT ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_55__ {int Size; int Buf; } ;
struct TYPE_54__ {scalar_t__* Buf; int Size; } ;
struct TYPE_53__ {int Ns; int TunnelId; int * AvpList; } ;
struct TYPE_52__ {scalar_t__ NextSendTick; int Buf; } ;
struct TYPE_51__ {int Halting; scalar_t__ Now; int HaltCompleted; int ThreadList; int * IkeServer; int HaltCompletedEvent; int * TunnelList; int FlushList; scalar_t__ Halt; } ;
struct TYPE_50__ {scalar_t__ LastRecvTick; int Timedout; int TunnelId2; int Established; scalar_t__ LastHelloSent; int IsV3; int Disconnecting; int SessionId2; scalar_t__ DisconnectTimeout; int StateChanged; int NextNs; int TunnelId1; int * SendQueue; int * SessionList; scalar_t__ IsCiscoV3; scalar_t__ WantToDisconnect; int SessionId1; TYPE_1__* TubeRecv; TYPE_39__* EtherIP; int TubeSend; scalar_t__ HasThread; } ;
struct TYPE_49__ {int * SendPacketList; } ;
struct TYPE_48__ {int DataSize; int Data; } ;
struct TYPE_47__ {scalar_t__ IntParam1; scalar_t__ IntParam2; } ;
typedef TYPE_2__ TUBEDATA ;
typedef int LIST ;
typedef TYPE_3__ L2TP_TUNNEL ;
typedef TYPE_3__ L2TP_SESSION ;
typedef TYPE_5__ L2TP_SERVER ;
typedef TYPE_6__ L2TP_QUEUE ;
typedef TYPE_7__ L2TP_PACKET ;
typedef TYPE_8__ BUF ;
typedef TYPE_9__ BLOCK ;


 int Add (int *,TYPE_3__*) ;
 int BuildL2TPPacketData (TYPE_7__*,TYPE_3__*) ;
 int Debug (char*,int ,int,...) ;
 int Delete (int *,TYPE_3__*) ;
 int DeleteAll (int *) ;
 int DisconnectL2TPSession (TYPE_3__*,TYPE_3__*) ;
 int DisconnectL2TPTunnel (TYPE_3__*) ;
 scalar_t__ Endian16 (int) ;
 scalar_t__ Endian32 (int) ;
 int EtherIPProcInterrupts (TYPE_39__*) ;
 int FlushTubeFlushList (int ) ;
 int FreeBlock (TYPE_9__*) ;
 int FreeBuf (TYPE_8__*) ;
 int FreeL2TPPacket (TYPE_7__*) ;
 int FreeL2TPQueue (TYPE_6__*) ;
 int FreeL2TPSession (TYPE_3__*) ;
 int FreeL2TPTunnel (TYPE_3__*) ;
 int FreeTubeData (TYPE_2__*) ;
 int IsTubeConnected (int ) ;
 int L2TPAddInterrupt (TYPE_5__*,scalar_t__) ;
 int L2TPSessionManageEtherIPServer (TYPE_5__*,TYPE_3__*) ;
 int L2TPV3_CISCO_AVP_SESSION_ID_LOCAL ;
 int L2TPV3_CISCO_AVP_TUNNEL_ID ;
 int L2TP_AVP_TYPE_ASSIGNED_SESSION ;
 int L2TP_AVP_TYPE_ASSIGNED_TUNNEL ;
 int L2TP_AVP_TYPE_PPP_DISCONNECT_CAUSE ;
 int L2TP_AVP_TYPE_RESULT_CODE ;
 int L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL ;
 int L2TP_AVP_TYPE_V3_TUNNEL_ID ;
 int L2TP_AVP_VENDOR_ID_CISCO ;
 scalar_t__ L2TP_HELLO_INTERVAL ;
 scalar_t__ L2TP_HELLO_SUPRESS_MAX_THRETHORD_NUM_SEND_QUEUE ;
 int L2TP_MESSAGE_TYPE_CDN ;
 int L2TP_MESSAGE_TYPE_HELLO ;
 int L2TP_MESSAGE_TYPE_STOPCCN ;
 scalar_t__ L2TP_PACKET_RESEND_INTERVAL ;
 scalar_t__ L2TP_TUNNEL_DISCONNECT_TIMEOUT ;
 scalar_t__ L2TP_TUNNEL_TIMEOUT ;
 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int MaintainThreadList (int ) ;
 TYPE_3__* NewAVP (int ,int,int ,scalar_t__*,int) ;
 TYPE_8__* NewBuf () ;
 TYPE_7__* NewL2TPControlPacket (int ,int) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 int SendL2TPControlPacket (TYPE_5__*,TYPE_3__*,int ,TYPE_7__*) ;
 int SendL2TPControlPacketMain (TYPE_5__*,TYPE_3__*,TYPE_6__*) ;
 int SendL2TPDataPacket (TYPE_5__*,TYPE_3__*,TYPE_3__*,int ,int ) ;
 int Set (int ) ;
 int StopL2TPThread (TYPE_5__*,TYPE_3__*,TYPE_3__*) ;
 TYPE_2__* TubeRecvAsync (int ) ;
 int WriteBuf (TYPE_8__*,scalar_t__*,int) ;
 int Zero (scalar_t__*,int) ;
 TYPE_6__* ZeroMalloc (int) ;

void L2TPProcessInterrupts(L2TP_SERVER *l2tp)
{
 UINT i, j;
 LIST *delete_tunnel_list = ((void*)0);

 if (l2tp == ((void*)0))
 {
  return;
 }

 if (l2tp->Halt)
 {
  if (l2tp->Halting == 0)
  {
   l2tp->Halting = 1;


   for (i = 0;i < LIST_NUM(l2tp->TunnelList);i++)
   {
    L2TP_TUNNEL *t = LIST_DATA(l2tp->TunnelList, i);

    DisconnectL2TPTunnel(t);
   }
  }
 }


 FlushTubeFlushList(l2tp->FlushList);


 for (i = 0;i < LIST_NUM(l2tp->TunnelList);i++)
 {
  L2TP_TUNNEL *t = LIST_DATA(l2tp->TunnelList, i);
  LIST *delete_session_list = ((void*)0);

  if ((l2tp->Now >= (t->LastRecvTick + (UINT64)L2TP_TUNNEL_TIMEOUT)) && t->Timedout == 0)
  {

   t->Timedout = 1;

   Debug("L2TP Tunnel %u/%u Timed out.\n", t->TunnelId1, t->TunnelId2);
   DisconnectL2TPTunnel(t);
  }

  if (t->Established && (l2tp->Now >= (t->LastHelloSent + (UINT64)L2TP_HELLO_INTERVAL)))
  {
   if (LIST_NUM(t->SendQueue) <= L2TP_HELLO_SUPRESS_MAX_THRETHORD_NUM_SEND_QUEUE)
   {
    L2TP_PACKET *pp = NewL2TPControlPacket(L2TP_MESSAGE_TYPE_HELLO, t->IsV3);


    t->LastHelloSent = l2tp->Now;


    SendL2TPControlPacket(l2tp, t, 0, pp);

    FreeL2TPPacket(pp);

    L2TPAddInterrupt(l2tp, t->LastHelloSent + (UINT64)L2TP_HELLO_INTERVAL);
   }
  }


  for (j = 0;j < LIST_NUM(t->SessionList);j++)
  {
   L2TP_SESSION *s = LIST_DATA(t->SessionList, j);

   if (s->HasThread)
   {

    while (1)
    {
     TUBEDATA *d = TubeRecvAsync(s->TubeSend);

     if (d == ((void*)0))
     {
      break;
     }

     SendL2TPDataPacket(l2tp, t, s, d->Data, d->DataSize);

     FreeTubeData(d);
    }

    if (IsTubeConnected(s->TubeSend) == 0)
    {

     DisconnectL2TPSession(t, s);
    }
   }

   if (s->IsV3)
   {
    if (s->EtherIP != ((void*)0))
    {
     UINT k;

     L2TPSessionManageEtherIPServer(l2tp, s);


     EtherIPProcInterrupts(s->EtherIP);


     for (k = 0;k < LIST_NUM(s->EtherIP->SendPacketList);k++)
     {
      BLOCK *b = LIST_DATA(s->EtherIP->SendPacketList, k);

      SendL2TPDataPacket(l2tp, t, s, b->Buf, b->Size);

      FreeBlock(b);
     }

     DeleteAll(s->EtherIP->SendPacketList);
    }
   }

   if (s->WantToDisconnect && s->Disconnecting == 0)
   {

    UCHAR error_data[4];
    USHORT us;
    UINT ui;
    UINT ppp_error_1 = 0, ppp_error_2 = 0;


    L2TP_PACKET *pp = NewL2TPControlPacket(L2TP_MESSAGE_TYPE_CDN, s->IsV3);

    if (s->TubeRecv != ((void*)0))
    {
     ppp_error_1 = s->TubeRecv->IntParam1;
     ppp_error_2 = s->TubeRecv->IntParam2;
    }


    if (s->IsV3 == 0)
    {
     us = Endian16(s->SessionId2);
     Add(pp->AvpList, NewAVP(L2TP_AVP_TYPE_ASSIGNED_SESSION, 1, 0,
      &us, sizeof(USHORT)));
    }
    else
    {
     ui = Endian16(s->SessionId2);
     Add(pp->AvpList, NewAVP(L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL, 1, 0,
      &ui, sizeof(UINT)));

     if (t->IsCiscoV3)
     {
      Add(pp->AvpList, NewAVP(L2TPV3_CISCO_AVP_SESSION_ID_LOCAL, 1, L2TP_AVP_VENDOR_ID_CISCO,
       &ui, sizeof(UINT)));
     }
    }


    Zero(error_data, sizeof(error_data));
    error_data[1] = 0x03;
    Add(pp->AvpList, NewAVP(L2TP_AVP_TYPE_RESULT_CODE, 1, 0,
     error_data, sizeof(error_data)));

    if (ppp_error_1 != 0)
    {

     BUF *b = NewBuf();
     UCHAR uc;
     USHORT us;


     us = Endian16(ppp_error_1);
     WriteBuf(b, &us, sizeof(USHORT));


     us = Endian16(0xc021);
     WriteBuf(b, &us, sizeof(USHORT));


     uc = (UCHAR)ppp_error_2;
     WriteBuf(b, &uc, sizeof(UCHAR));

     Add(pp->AvpList, NewAVP(L2TP_AVP_TYPE_PPP_DISCONNECT_CAUSE, 0, 0,
      b->Buf, b->Size));

     FreeBuf(b);
    }

    SendL2TPControlPacket(l2tp, t, s->SessionId1, pp);

    FreeL2TPPacket(pp);


    Debug("L2TP Session %u/%u on Tunnel %u/%u Disconnected.\n", s->SessionId1, s->SessionId2,
     t->TunnelId1, t->TunnelId2);
    s->Disconnecting = 1;
    s->Established = 0;
    s->DisconnectTimeout = l2tp->Now + (UINT64)L2TP_TUNNEL_DISCONNECT_TIMEOUT;


    StopL2TPThread(l2tp, t, s);

    L2TPAddInterrupt(l2tp, s->DisconnectTimeout);
   }

   if (s->Disconnecting && ((l2tp->Now >= s->DisconnectTimeout) || LIST_NUM(t->SendQueue) == 0))
   {


    if (delete_session_list == ((void*)0))
    {
     delete_session_list = NewListFast(((void*)0));
    }

    Add(delete_session_list, s);
   }
  }

  if (delete_session_list != ((void*)0))
  {

   for (j = 0;j < LIST_NUM(delete_session_list);j++)
   {
    L2TP_SESSION *s = LIST_DATA(delete_session_list, j);

    Debug("L2TP Session %u/%u on Tunnel %u/%u Cleaned up.\n", s->SessionId1, s->SessionId2,
     t->TunnelId1, t->TunnelId2);

    FreeL2TPSession(s);
    Delete(t->SessionList, s);
   }

   ReleaseList(delete_session_list);
  }

  if (t->WantToDisconnect && t->Disconnecting == 0)
  {

   USHORT error_data[4];
   USHORT us;
   UINT ui;

   L2TP_PACKET *pp = NewL2TPControlPacket(L2TP_MESSAGE_TYPE_STOPCCN, t->IsV3);


   if (t->IsV3 == 0)
   {
    us = Endian16(t->TunnelId2);
    Add(pp->AvpList, NewAVP(L2TP_AVP_TYPE_ASSIGNED_TUNNEL, 1, 0,
     &us, sizeof(USHORT)));
   }
   else
   {
    ui = Endian32(t->TunnelId2);
    Add(pp->AvpList, NewAVP(L2TP_AVP_TYPE_V3_TUNNEL_ID, 1, 0,
     &ui, sizeof(UINT)));

    if (t->IsCiscoV3)
    {
     Add(pp->AvpList, NewAVP(L2TPV3_CISCO_AVP_TUNNEL_ID, 1, L2TP_AVP_VENDOR_ID_CISCO,
      &ui, sizeof(UINT)));
    }
   }


   Zero(error_data, sizeof(error_data));
   error_data[1] = 0x06;
   Add(pp->AvpList, NewAVP(L2TP_AVP_TYPE_RESULT_CODE, 1, 0,
    error_data, sizeof(error_data)));

   SendL2TPControlPacket(l2tp, t, 0, pp);

   FreeL2TPPacket(pp);

   Debug("L2TP Tunnel %u/%u is Disconnected.\n", t->TunnelId1, t->TunnelId2);
   t->Disconnecting = 1;
   t->Established = 0;
   t->DisconnectTimeout = l2tp->Now + (UINT64)L2TP_TUNNEL_DISCONNECT_TIMEOUT;
   L2TPAddInterrupt(l2tp, t->DisconnectTimeout);
  }

  if (t->Disconnecting && (((LIST_NUM(t->SendQueue) == 0) && LIST_NUM(t->SessionList) == 0) || (l2tp->Now >= t->DisconnectTimeout)))
  {


   if (delete_tunnel_list == ((void*)0))
   {
    delete_tunnel_list = NewListFast(((void*)0));
   }

   Add(delete_tunnel_list, t);
  }
 }

 if (delete_tunnel_list != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(delete_tunnel_list);i++)
  {
   L2TP_TUNNEL *t = LIST_DATA(delete_tunnel_list, i);

   Debug("L2TP Tunnel %u/%u Cleaned up.\n", t->TunnelId1, t->TunnelId2);

   FreeL2TPTunnel(t);
   Delete(l2tp->TunnelList, t);
  }

  ReleaseList(delete_tunnel_list);
 }


 for (i = 0;i < LIST_NUM(l2tp->TunnelList);i++)
 {
  L2TP_TUNNEL *t = LIST_DATA(l2tp->TunnelList, i);
  UINT j;

  if (LIST_NUM(t->SendQueue) >= 1)
  {

   for (j = 0;j < LIST_NUM(t->SendQueue);j++)
   {
    L2TP_QUEUE *q = LIST_DATA(t->SendQueue, j);

    if (l2tp->Now >= q->NextSendTick)
    {
     q->NextSendTick = l2tp->Now + (UINT64)L2TP_PACKET_RESEND_INTERVAL;

     L2TPAddInterrupt(l2tp, q->NextSendTick);

     SendL2TPControlPacketMain(l2tp, t, q);
    }
   }
  }
  else
  {

   if (t->StateChanged)
   {

    L2TP_QUEUE *q = ZeroMalloc(sizeof(L2TP_QUEUE));
    L2TP_PACKET *pp = NewL2TPControlPacket(0, t->IsV3);

    pp->TunnelId = t->TunnelId1;
    pp->Ns = t->NextNs;
    q->Buf = BuildL2TPPacketData(pp, t);

    SendL2TPControlPacketMain(l2tp, t, q);

    FreeL2TPQueue(q);
    FreeL2TPPacket(pp);
   }
  }

  t->StateChanged = 0;
 }

 if (l2tp->Halting)
 {
  if (LIST_NUM(l2tp->TunnelList) == 0)
  {

   if (l2tp->HaltCompleted == 0)
   {
    l2tp->HaltCompleted = 1;

    Set(l2tp->HaltCompletedEvent);
   }
  }
 }


 if (l2tp->IkeServer == ((void*)0))
 {
  MaintainThreadList(l2tp->ThreadList);

 }
}
