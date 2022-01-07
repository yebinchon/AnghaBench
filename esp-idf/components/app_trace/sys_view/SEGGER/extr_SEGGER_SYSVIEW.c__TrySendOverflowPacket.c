
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U8 ;
typedef void* U32 ;
struct TYPE_2__ {void* LastTxTimeStamp; void* DropCount; int EnableState; } ;
typedef void* I32 ;


 int CHANNEL_ID_UP ;
 int ENCODE_U32 (int *,void*) ;
 int MAKE_DELTA_32BIT (void*) ;
 int SEGGER_RTT_WriteSkipNoLock (int ,int *,int) ;
 void* SEGGER_SYSVIEW_GET_TIMESTAMP () ;
 int SYSVIEW_EVTID_OVERFLOW ;
 TYPE_1__ _SYSVIEW_Globals ;

__attribute__((used)) static int _TrySendOverflowPacket(void) {
  U32 TimeStamp;
  I32 Delta;
  int Status;
  U8 aPacket[11];
  U8* pPayload;

  aPacket[0] = SYSVIEW_EVTID_OVERFLOW;
  pPayload = &aPacket[1];
  ENCODE_U32(pPayload, _SYSVIEW_Globals.DropCount);



  TimeStamp = SEGGER_SYSVIEW_GET_TIMESTAMP();
  Delta = TimeStamp - _SYSVIEW_Globals.LastTxTimeStamp;
  MAKE_DELTA_32BIT(Delta);
  ENCODE_U32(pPayload, Delta);



  Status = SEGGER_RTT_WriteSkipNoLock(CHANNEL_ID_UP, aPacket, pPayload - aPacket);
  if (Status) {
    _SYSVIEW_Globals.LastTxTimeStamp = TimeStamp;
    _SYSVIEW_Globals.EnableState--;
  } else {
    _SYSVIEW_Globals.DropCount++;
  }

  return Status;
}
