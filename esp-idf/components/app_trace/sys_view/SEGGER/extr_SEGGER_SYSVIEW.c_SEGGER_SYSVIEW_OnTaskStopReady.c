
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
 unsigned int SHRINK_ID (unsigned int) ;
 int SYSVIEW_EVTID_TASK_STOP_READY ;
 int _SendPacket (int *,int *,int ) ;

void SEGGER_SYSVIEW_OnTaskStopReady(U32 TaskId, unsigned int Cause) {
  U8* pPayload;
  U8* pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE + 2 * SEGGER_SYSVIEW_QUANTA_U32);

  pPayload = pPayloadStart;
  TaskId = SHRINK_ID(TaskId);
  ENCODE_U32(pPayload, TaskId);
  ENCODE_U32(pPayload, Cause);
  _SendPacket(pPayloadStart, pPayload, SYSVIEW_EVTID_TASK_STOP_READY);
  RECORD_END();
}
