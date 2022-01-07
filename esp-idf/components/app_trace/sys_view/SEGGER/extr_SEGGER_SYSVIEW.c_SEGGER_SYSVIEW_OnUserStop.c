
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int ENCODE_U32 (int *,unsigned int) ;
 int RECORD_END () ;
 int RECORD_START (scalar_t__) ;
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ;
 scalar_t__ SEGGER_SYSVIEW_QUANTA_U32 ;
 int SYSVIEW_EVTID_USER_STOP ;
 int _SendPacket (int *,int *,int ) ;

void SEGGER_SYSVIEW_OnUserStop(unsigned UserId) {
  U8 * pPayload;
  U8 * pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE + SEGGER_SYSVIEW_QUANTA_U32);

  pPayload = pPayloadStart;
  ENCODE_U32(pPayload, UserId);
  _SendPacket(pPayloadStart, pPayload, SYSVIEW_EVTID_USER_STOP);
  RECORD_END();
}
