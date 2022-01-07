
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;


 int ENCODE_U32 (int *,int ) ;
 int RECORD_END () ;
 int RECORD_START (scalar_t__) ;
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ;
 int SEGGER_SYSVIEW_QUANTA_U32 ;
 int _SendPacket (int *,int *,unsigned int) ;

void SEGGER_SYSVIEW_RecordU32x5(unsigned int EventID, U32 Para0, U32 Para1, U32 Para2, U32 Para3, U32 Para4) {
  U8* pPayload;
  U8* pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE + 5 * SEGGER_SYSVIEW_QUANTA_U32);

  pPayload = pPayloadStart;
  ENCODE_U32(pPayload, Para0);
  ENCODE_U32(pPayload, Para1);
  ENCODE_U32(pPayload, Para2);
  ENCODE_U32(pPayload, Para3);
  ENCODE_U32(pPayload, Para4);
  _SendPacket(pPayloadStart, pPayload, EventID);
  RECORD_END();
}
