
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_2__ {scalar_t__ EnableState; } ;


 int RECORD_END () ;
 int RECORD_START (int ) ;
 int SEGGER_SYSVIEW_INFO_SIZE ;
 int SYSVIEW_EVTID_TRACE_STOP ;
 TYPE_1__ _SYSVIEW_Globals ;
 int _SendPacket (int *,int *,int ) ;

void SEGGER_SYSVIEW_Stop(void) {
  U8* pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE);

  if (_SYSVIEW_Globals.EnableState) {
    _SendPacket(pPayloadStart, pPayloadStart, SYSVIEW_EVTID_TRACE_STOP);
    _SYSVIEW_Globals.EnableState = 0;
  }
  RECORD_END();
}
