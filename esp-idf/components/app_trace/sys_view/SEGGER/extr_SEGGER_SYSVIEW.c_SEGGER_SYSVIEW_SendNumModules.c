
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int ENCODE_U32 (int *,int ) ;
 int RECORD_END () ;
 int RECORD_START (scalar_t__) ;
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ;
 int SEGGER_SYSVIEW_QUANTA_U32 ;
 int SYSVIEW_EVTID_NUMMODULES ;
 int _NumModules ;
 int _SendPacket (int *,int *,int ) ;

void SEGGER_SYSVIEW_SendNumModules(void) {
  U8* pPayload;
  U8* pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE + 2*SEGGER_SYSVIEW_QUANTA_U32);
  pPayload = pPayloadStart;
  ENCODE_U32(pPayload, _NumModules);
  _SendPacket(pPayloadStart, pPayload, SYSVIEW_EVTID_NUMMODULES);
  RECORD_END();
}
