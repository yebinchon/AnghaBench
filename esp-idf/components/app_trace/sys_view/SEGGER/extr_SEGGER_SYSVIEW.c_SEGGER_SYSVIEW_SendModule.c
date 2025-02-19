
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U8 ;
typedef scalar_t__ U32 ;
struct TYPE_3__ {scalar_t__ EventOffset; int sModule; struct TYPE_3__* pNext; } ;
typedef TYPE_1__ SEGGER_SYSVIEW_MODULE ;


 int ENCODE_U32 (scalar_t__*,scalar_t__) ;
 int RECORD_END () ;
 int RECORD_START (scalar_t__) ;
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ;
 scalar_t__ SEGGER_SYSVIEW_MAX_STRING_LEN ;
 int SEGGER_SYSVIEW_QUANTA_U32 ;
 int SYSVIEW_EVTID_MODULEDESC ;
 scalar_t__* _EncodeStr (scalar_t__*,int ,scalar_t__) ;
 int _SendPacket (scalar_t__*,scalar_t__*,int ) ;
 TYPE_1__* _pFirstModule ;

void SEGGER_SYSVIEW_SendModule(U8 ModuleId) {
  SEGGER_SYSVIEW_MODULE* pModule;
  U32 n;

  if (_pFirstModule != 0) {
    pModule = _pFirstModule;
    for (n = 0; n < ModuleId; n++) {
      pModule = pModule->pNext;
      if (pModule == 0) {
        break;
      }
    }
    if (pModule != 0) {
      U8* pPayload;
      U8* pPayloadStart;
      RECORD_START(SEGGER_SYSVIEW_INFO_SIZE + 2 * SEGGER_SYSVIEW_QUANTA_U32 + 1 + SEGGER_SYSVIEW_MAX_STRING_LEN);

      pPayload = pPayloadStart;




      ENCODE_U32(pPayload, ModuleId);
      ENCODE_U32(pPayload, (pModule->EventOffset));
      pPayload = _EncodeStr(pPayload, pModule->sModule, SEGGER_SYSVIEW_MAX_STRING_LEN);
      _SendPacket(pPayloadStart, pPayload, SYSVIEW_EVTID_MODULEDESC);
      RECORD_END();
    }
  }
}
