
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int RECORD_END () ;
 int RECORD_START (scalar_t__) ;
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ;
 scalar_t__ SEGGER_SYSVIEW_MAX_STRING_LEN ;
 int * _EncodeStr (int *,char const*,scalar_t__) ;
 int _SendPacket (int *,int *,unsigned int) ;

void SEGGER_SYSVIEW_RecordString(unsigned int EventID, const char* pString) {
  U8* pPayload;
  U8* pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE + 1 + SEGGER_SYSVIEW_MAX_STRING_LEN);

  pPayload = _EncodeStr(pPayloadStart, pString, SEGGER_SYSVIEW_MAX_STRING_LEN);
  _SendPacket(pPayloadStart, pPayload, EventID);
  RECORD_END();
}
