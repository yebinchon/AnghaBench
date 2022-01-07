
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int U8 ;
typedef unsigned int U32 ;
struct TYPE_2__ {int EnableState; unsigned int DisabledEvents; unsigned int LastTxTimeStamp; int RecursionCnt; scalar_t__ PacketCount; } ;


 int CHANNEL_ID_DOWN ;
 int CHANNEL_ID_UP ;
 int ENCODE_U32 (unsigned int*,unsigned int) ;
 int MAKE_DELTA_32BIT (unsigned int) ;
 scalar_t__ SEGGER_RTT_HASDATA (int ) ;
 int SEGGER_RTT_WriteSkipNoLock (int ,unsigned int*,int) ;
 int SEGGER_RTT_WriteWithOverwriteNoLock (int ,unsigned int*,int) ;
 unsigned int SEGGER_SYSVIEW_GET_TIMESTAMP () ;
 int SEGGER_SYSVIEW_LOCK () ;
 int SEGGER_SYSVIEW_SYNC_PERIOD_SHIFT ;
 int SEGGER_SYSVIEW_UNLOCK () ;
 int _HandleIncomingPacket () ;
 TYPE_1__ _SYSVIEW_Globals ;
 int _SendSyncInfo () ;
 int _TrySendOverflowPacket () ;

__attribute__((used)) static void _SendPacket(U8* pStartPacket, U8* pEndPacket, unsigned int EventId) {
  unsigned int NumBytes;
  U32 TimeStamp;
  U32 Delta;

  int Status;



  SEGGER_SYSVIEW_LOCK();







  if (_SYSVIEW_Globals.EnableState == 1) {
    goto Send;
  }
  if (_SYSVIEW_Globals.EnableState == 0) {
    goto SendDone;
  }





  if (_SYSVIEW_Globals.EnableState == 2) {
    _TrySendOverflowPacket();
    if (_SYSVIEW_Globals.EnableState != 1) {
      goto SendDone;
    }
  }
Send:




  if (EventId < 32) {
    if (_SYSVIEW_Globals.DisabledEvents & ((U32)1u << EventId)) {
      goto SendDone;
    }
  }





  if (EventId < 24) {
    *--pStartPacket = EventId;
  } else {
    NumBytes = pEndPacket - pStartPacket;
    if (NumBytes > 127) {
      *--pStartPacket = (NumBytes >> 7);
      *--pStartPacket = NumBytes | 0x80;
    } else {
      *--pStartPacket = NumBytes;
    }
    if (EventId > 127) {
      *--pStartPacket = (EventId >> 7);
      *--pStartPacket = EventId | 0x80;
    } else {
      *--pStartPacket = EventId;
    }
  }



  TimeStamp = SEGGER_SYSVIEW_GET_TIMESTAMP();
  Delta = TimeStamp - _SYSVIEW_Globals.LastTxTimeStamp;
  MAKE_DELTA_32BIT(Delta);
  ENCODE_U32(pEndPacket, Delta);
  Status = SEGGER_RTT_WriteSkipNoLock(CHANNEL_ID_UP, pStartPacket, pEndPacket - pStartPacket);
  if (Status) {
    _SYSVIEW_Globals.LastTxTimeStamp = TimeStamp;
  } else {
    _SYSVIEW_Globals.EnableState++;
  }
SendDone:





  if (SEGGER_RTT_HASDATA(CHANNEL_ID_DOWN)) {
    if (_SYSVIEW_Globals.RecursionCnt == 0) {
      _SYSVIEW_Globals.RecursionCnt = 1;
      _HandleIncomingPacket();
      _SYSVIEW_Globals.RecursionCnt = 0;
    }
  }



  SEGGER_SYSVIEW_UNLOCK();

}
