
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_15__ {int Size; int Buf; } ;
struct TYPE_14__ {scalar_t__ Now; int FlushRecvTube; scalar_t__ Status; int Disconnecting; int Aborting; scalar_t__ NextSendEchoRequestTick; scalar_t__ LastRecvTick; int Disconnected; int DisconnectSent; int AbortSent; scalar_t__ AbortReceived; scalar_t__ DisconnectRecved; int TubeSend; int TubeRecv; int Interrupt; int RecvQueue; } ;
struct TYPE_13__ {int DataSize; int Data; } ;
typedef TYPE_1__ TUBEDATA ;
typedef TYPE_2__ SSTP_SERVER ;
typedef int SSTP_PACKET ;
typedef TYPE_3__ BLOCK ;


 int AddInterrupt (int ,scalar_t__) ;
 int FreeBlock (TYPE_3__*) ;
 int FreeTubeData (TYPE_1__*) ;
 TYPE_3__* GetNext (int ) ;
 int IsTubeConnected (int ) ;
 int Rand32 () ;
 int SSTP_ECHO_SEND_INTERVAL_MAX ;
 int SSTP_ECHO_SEND_INTERVAL_MIN ;
 int SSTP_MSG_CALL_ABORT ;
 int SSTP_MSG_CALL_DISCONNECT ;
 int SSTP_MSG_CALL_DISCONNECT_ACK ;
 int SSTP_MSG_ECHO_REQUEST ;
 scalar_t__ SSTP_SERVER_STATUS_ESTABLISHED ;
 scalar_t__ SSTP_TIMEOUT ;
 int SstpAbort (TYPE_2__*) ;
 int SstpDisconnect (TYPE_2__*) ;
 int SstpFreePacket (int *) ;
 int * SstpNewControlPacket (int ) ;
 int * SstpNewDataPacket (int ,int ) ;
 int * SstpParsePacket (int ,int ) ;
 int SstpProcessPacket (TYPE_2__*,int *) ;
 int SstpSendPacket (TYPE_2__*,int *) ;
 scalar_t__ Tick64 () ;
 int TubeFlush (int ) ;
 TYPE_1__* TubeRecvAsync (int ) ;

void SstpProcessInterrupt(SSTP_SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 s->Now = Tick64();

 s->FlushRecvTube = 0;


 while (1)
 {
  BLOCK *b = GetNext(s->RecvQueue);
  SSTP_PACKET *p;

  if (b == ((void*)0))
  {
   break;
  }

  p = SstpParsePacket(b->Buf, b->Size);
  if (p == ((void*)0))
  {

   SstpAbort(s);
  }
  else
  {

   SstpProcessPacket(s, p);

   SstpFreePacket(p);
  }

  FreeBlock(b);
 }

 if (s->FlushRecvTube)
 {
  TubeFlush(s->TubeRecv);
 }


 while (1)
 {
  TUBEDATA *d = TubeRecvAsync(s->TubeSend);
  SSTP_PACKET *p;
  if (d == ((void*)0))
  {
   break;
  }

  p = SstpNewDataPacket(d->Data, d->DataSize);

  SstpSendPacket(s, p);

  SstpFreePacket(p);

  FreeTubeData(d);
 }

 if (s->Status == SSTP_SERVER_STATUS_ESTABLISHED)
 {
  if (s->Disconnecting == 0 && s->Aborting == 0)
  {

   if (s->NextSendEchoRequestTick == 0 || s->NextSendEchoRequestTick <= s->Now)
   {
    UINT64 next_interval = (UINT64)(SSTP_ECHO_SEND_INTERVAL_MIN + Rand32() % (SSTP_ECHO_SEND_INTERVAL_MAX - SSTP_ECHO_SEND_INTERVAL_MIN));
    SSTP_PACKET *p;

    s->NextSendEchoRequestTick = s->Now + next_interval;
    AddInterrupt(s->Interrupt, s->NextSendEchoRequestTick);

    p = SstpNewControlPacket(SSTP_MSG_ECHO_REQUEST);

    SstpSendPacket(s, p);

    SstpFreePacket(p);
   }
  }
 }

 if ((s->LastRecvTick + (UINT64)SSTP_TIMEOUT) <= s->Now)
 {

  SstpAbort(s);
  s->Disconnected = 1;
 }

 if (IsTubeConnected(s->TubeRecv) == 0 || IsTubeConnected(s->TubeSend) == 0)
 {

  SstpDisconnect(s);
 }

 if (s->Disconnecting)
 {

  if (s->DisconnectSent == 0)
  {

   SSTP_PACKET *ret = SstpNewControlPacket(s->DisconnectRecved ? SSTP_MSG_CALL_DISCONNECT_ACK : SSTP_MSG_CALL_DISCONNECT);

   SstpSendPacket(s, ret);

   SstpFreePacket(ret);

   s->DisconnectSent = 1;
  }
 }

 if (s->Aborting)
 {

  if (s->AbortSent == 0)
  {

   SSTP_PACKET *ret = SstpNewControlPacket(SSTP_MSG_CALL_ABORT);

   SstpSendPacket(s, ret);

   SstpFreePacket(ret);

   s->AbortSent = 1;
  }
 }

 if (s->DisconnectSent && s->DisconnectRecved)
 {

  s->Disconnected = 1;
 }

 if (s->AbortSent && s->AbortReceived)
 {

  s->Disconnected = 1;
 }
}
