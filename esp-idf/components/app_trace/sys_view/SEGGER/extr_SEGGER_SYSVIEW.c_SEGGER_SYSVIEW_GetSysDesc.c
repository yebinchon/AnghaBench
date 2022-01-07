
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_2__ {int (* pfSendSysDesc ) () ;int RAMBaseAddress; int CPUFreq; int SysFreq; } ;


 int ENCODE_U32 (int *,int ) ;
 int RECORD_END () ;
 int RECORD_START (scalar_t__) ;
 int SEGGER_SYSVIEW_ID_SHIFT ;
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ;
 int SEGGER_SYSVIEW_QUANTA_U32 ;
 int SYSVIEW_EVTID_INIT ;
 TYPE_1__ _SYSVIEW_Globals ;
 int _SendPacket (int *,int *,int ) ;
 int stub1 () ;

void SEGGER_SYSVIEW_GetSysDesc(void) {
  U8* pPayload;
  U8* pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE + 4 * SEGGER_SYSVIEW_QUANTA_U32);

  pPayload = pPayloadStart;
  ENCODE_U32(pPayload, _SYSVIEW_Globals.SysFreq);
  ENCODE_U32(pPayload, _SYSVIEW_Globals.CPUFreq);
  ENCODE_U32(pPayload, _SYSVIEW_Globals.RAMBaseAddress);
  ENCODE_U32(pPayload, SEGGER_SYSVIEW_ID_SHIFT);
  _SendPacket(pPayloadStart, pPayload, SYSVIEW_EVTID_INIT);
  RECORD_END();
  if (_SYSVIEW_Globals.pfSendSysDesc) {
    _SYSVIEW_Globals.pfSendSysDesc();
  }
}
