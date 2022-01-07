
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_3__ {int StackSize; int StackBase; int TaskID; int sName; int Prio; } ;
typedef TYPE_1__ SEGGER_SYSVIEW_TASKINFO ;


 int ENCODE_U32 (int *,int ) ;
 int RECORD_END () ;
 int RECORD_START (scalar_t__) ;
 scalar_t__ SEGGER_SYSVIEW_INFO_SIZE ;
 scalar_t__ SEGGER_SYSVIEW_QUANTA_U32 ;
 int SHRINK_ID (int ) ;
 int SYSVIEW_EVTID_STACK_INFO ;
 int SYSVIEW_EVTID_TASK_INFO ;
 int * _EncodeStr (int *,int ,int) ;
 int _SendPacket (int *,int *,int ) ;

void SEGGER_SYSVIEW_SendTaskInfo(const SEGGER_SYSVIEW_TASKINFO *pInfo) {
  U8* pPayload;
  U8* pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE + SEGGER_SYSVIEW_QUANTA_U32 + 1 + 32);

  pPayload = pPayloadStart;
  ENCODE_U32(pPayload, SHRINK_ID(pInfo->TaskID));
  ENCODE_U32(pPayload, pInfo->Prio);
  pPayload = _EncodeStr(pPayload, pInfo->sName, 32);
  _SendPacket(pPayloadStart, pPayload, SYSVIEW_EVTID_TASK_INFO);

  pPayload = pPayloadStart;
  ENCODE_U32(pPayload, SHRINK_ID(pInfo->TaskID));
  ENCODE_U32(pPayload, pInfo->StackBase);
  ENCODE_U32(pPayload, pInfo->StackSize);
  ENCODE_U32(pPayload, 0);
  _SendPacket(pPayloadStart, pPayload, SYSVIEW_EVTID_STACK_INFO);
  RECORD_END();
}
