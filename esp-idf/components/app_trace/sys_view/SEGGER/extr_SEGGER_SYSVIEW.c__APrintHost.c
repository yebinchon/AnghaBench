
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
 int SEGGER_SYSVIEW_MAX_ARGUMENTS ;
 scalar_t__ SEGGER_SYSVIEW_MAX_STRING_LEN ;
 int SEGGER_SYSVIEW_QUANTA_U32 ;
 int SYSVIEW_EVTID_PRINT_FORMATTED ;
 int * _EncodeStr (int *,char const*,scalar_t__) ;
 int _SendPacket (int *,int *,int ) ;

__attribute__((used)) static void _APrintHost(const char* s, U32 Options, U32* pArguments, U32 NumArguments) {
  U8* pPayload;
  U8* pPayloadStart;

  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE + SEGGER_SYSVIEW_MAX_STRING_LEN + 2 * SEGGER_SYSVIEW_QUANTA_U32 + SEGGER_SYSVIEW_MAX_ARGUMENTS * SEGGER_SYSVIEW_QUANTA_U32);
  pPayload = _EncodeStr(pPayloadStart, s, SEGGER_SYSVIEW_MAX_STRING_LEN);
  ENCODE_U32(pPayload, Options);
  ENCODE_U32(pPayload, NumArguments);
  while (NumArguments--) {
    ENCODE_U32(pPayload, (*pArguments++));
  }
  _SendPacket(pPayloadStart, pPayload, SYSVIEW_EVTID_PRINT_FORMATTED);
  RECORD_END();
}
