
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int RECORD_END () ;
 int RECORD_START (int ) ;
 int SEGGER_SYSVIEW_INFO_SIZE ;
 int SYSVIEW_EVTID_IDLE ;
 int _SendPacket (int *,int *,int ) ;

void SEGGER_SYSVIEW_OnIdle(void) {
  U8* pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE);

  _SendPacket(pPayloadStart, pPayloadStart, SYSVIEW_EVTID_IDLE);
  RECORD_END();
}
