
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_2__ {int EnableState; int (* pfSendSysDesc ) () ;int RAMBaseAddress; int CPUFreq; int SysFreq; } ;


 int CHANNEL_ID_UP ;
 int ENCODE_U32 (int *,int ) ;
 int RECORD_END () ;
 int RECORD_START (scalar_t__) ;
 int SEGGER_RTT_WriteSkipNoLock (int ,int ,int) ;
 int SEGGER_SYSVIEW_ID_SHIFT ;
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ;
 int SEGGER_SYSVIEW_LOCK () ;
 int SEGGER_SYSVIEW_QUANTA_U32 ;
 int SEGGER_SYSVIEW_RecordSystime () ;
 int SEGGER_SYSVIEW_RecordVoid (int ) ;
 int SEGGER_SYSVIEW_SendNumModules () ;
 int SEGGER_SYSVIEW_SendTaskList () ;
 int SEGGER_SYSVIEW_UNLOCK () ;
 int SYSVIEW_EVTID_INIT ;
 int SYSVIEW_EVTID_TRACE_START ;
 TYPE_1__ _SYSVIEW_Globals ;
 int _SendPacket (int *,int *,int ) ;
 int _SendSyncInfo () ;
 int _abSync ;
 int stub1 () ;

void SEGGER_SYSVIEW_Start(void) {
  if (_SYSVIEW_Globals.EnableState == 0) {
    _SYSVIEW_Globals.EnableState = 1;



    SEGGER_SYSVIEW_LOCK();
    SEGGER_RTT_WriteSkipNoLock(CHANNEL_ID_UP, _abSync, 10);
    SEGGER_SYSVIEW_UNLOCK();
    SEGGER_SYSVIEW_RecordVoid(SYSVIEW_EVTID_TRACE_START);
    {
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
    }
    if (_SYSVIEW_Globals.pfSendSysDesc) {
      _SYSVIEW_Globals.pfSendSysDesc();
    }
    SEGGER_SYSVIEW_RecordSystime();
    SEGGER_SYSVIEW_SendTaskList();
    SEGGER_SYSVIEW_SendNumModules();

  }
}
