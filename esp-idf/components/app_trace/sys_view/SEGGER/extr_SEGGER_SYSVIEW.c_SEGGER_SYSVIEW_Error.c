
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int ENCODE_U32 (int *,int ) ;
 int RECORD_END () ;
 int RECORD_START (scalar_t__) ;
 int SEGGER_SYSVIEW_ERROR ;
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ;
 scalar_t__ SEGGER_SYSVIEW_MAX_STRING_LEN ;
 int SEGGER_SYSVIEW_QUANTA_U32 ;
 int SYSVIEW_EVTID_PRINT_FORMATTED ;
 int * _EncodeStr (int *,char const*,scalar_t__) ;
 int _SendPacket (int *,int *,int ) ;

void SEGGER_SYSVIEW_Error(const char* s) {
  U8* pPayload;
  U8* pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE + 2 * SEGGER_SYSVIEW_QUANTA_U32 + SEGGER_SYSVIEW_MAX_STRING_LEN);

  pPayload = _EncodeStr(pPayloadStart, s, SEGGER_SYSVIEW_MAX_STRING_LEN);
  ENCODE_U32(pPayload, SEGGER_SYSVIEW_ERROR);
  ENCODE_U32(pPayload, 0);
  _SendPacket(pPayloadStart, pPayload, SYSVIEW_EVTID_PRINT_FORMATTED);
  RECORD_END();
}
