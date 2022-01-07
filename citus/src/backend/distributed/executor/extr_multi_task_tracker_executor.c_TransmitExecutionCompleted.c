
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef scalar_t__ TransmitExecStatus ;
struct TYPE_3__ {scalar_t__ nodeCount; scalar_t__* transmitStatusArray; } ;
typedef TYPE_1__ TaskExecution ;


 scalar_t__ EXEC_TRANSMIT_DONE ;

__attribute__((used)) static bool
TransmitExecutionCompleted(TaskExecution *taskExecution)
{
 bool completed = 0;
 uint32 nodeIndex = 0;

 for (nodeIndex = 0; nodeIndex < taskExecution->nodeCount; nodeIndex++)
 {
  TransmitExecStatus *transmitStatusArray = taskExecution->transmitStatusArray;

  TransmitExecStatus transmitStatus = transmitStatusArray[nodeIndex];
  if (transmitStatus == EXEC_TRANSMIT_DONE)
  {
   completed = 1;
   break;
  }
 }

 return completed;
}
