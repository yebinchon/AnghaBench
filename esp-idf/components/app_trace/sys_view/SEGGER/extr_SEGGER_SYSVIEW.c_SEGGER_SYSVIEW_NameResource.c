
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
 scalar_t__ SEGGER_SYSVIEW_MAX_STRING_LEN ;
 scalar_t__ SEGGER_SYSVIEW_QUANTA_U32 ;
 int SHRINK_ID (int ) ;
 int SYSVIEW_EVTID_NAME_RESOURCE ;
 int * _EncodeStr (int *,char const*,scalar_t__) ;
 int _SendPacket (int *,int *,int ) ;

void SEGGER_SYSVIEW_NameResource(U32 ResourceId, const char* sName) {
  U8* pPayload;
  U8* pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE + SEGGER_SYSVIEW_QUANTA_U32 + 1 + SEGGER_SYSVIEW_MAX_STRING_LEN);

  pPayload = pPayloadStart;
  ENCODE_U32(pPayload, SHRINK_ID(ResourceId));
  pPayload = _EncodeStr(pPayload, sName, SEGGER_SYSVIEW_MAX_STRING_LEN);
  _SendPacket(pPayloadStart, pPayload, SYSVIEW_EVTID_NAME_RESOURCE);
  RECORD_END();
}
