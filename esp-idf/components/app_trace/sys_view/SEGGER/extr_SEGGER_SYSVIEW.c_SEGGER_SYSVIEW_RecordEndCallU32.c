
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef unsigned int U32 ;


 int ENCODE_U32 (int *,unsigned int) ;
 int RECORD_END () ;
 int RECORD_START (scalar_t__) ;
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ;
 int SEGGER_SYSVIEW_QUANTA_U32 ;
 int SYSVIEW_EVTID_END_CALL ;
 int _SendPacket (int *,int *,int ) ;

void SEGGER_SYSVIEW_RecordEndCallU32(unsigned int EventID, U32 Para0) {
  U8* pPayload;
  U8* pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE + 2 * SEGGER_SYSVIEW_QUANTA_U32);

  pPayload = pPayloadStart;
  ENCODE_U32(pPayload, EventID);
  ENCODE_U32(pPayload, Para0);
  _SendPacket(pPayloadStart, pPayload, SYSVIEW_EVTID_END_CALL);
  RECORD_END();
}
