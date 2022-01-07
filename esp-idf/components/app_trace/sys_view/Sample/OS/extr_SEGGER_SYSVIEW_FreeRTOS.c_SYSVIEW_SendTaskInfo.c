
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* U32 ;
typedef int TaskInfo ;
struct TYPE_4__ {char const* sName; unsigned int Prio; unsigned int StackSize; void* StackBase; void* TaskID; } ;
typedef TYPE_1__ SEGGER_SYSVIEW_TASKINFO ;


 int SEGGER_SYSVIEW_SendTaskInfo (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void SYSVIEW_SendTaskInfo(U32 TaskID, const char* sName, unsigned Prio, U32 StackBase, unsigned StackSize) {
  SEGGER_SYSVIEW_TASKINFO TaskInfo;

  memset(&TaskInfo, 0, sizeof(TaskInfo));
  TaskInfo.TaskID = TaskID;
  TaskInfo.sName = sName;
  TaskInfo.Prio = Prio;
  TaskInfo.StackBase = StackBase;
  TaskInfo.StackSize = StackSize;
  SEGGER_SYSVIEW_SendTaskInfo(&TaskInfo);
}
