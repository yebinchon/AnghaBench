
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__* StringInfo ;


 int MIN_TASK_FILENAME_WIDTH ;
 int TASK_FILE_PREFIX ;
 int appendStringInfo (TYPE_1__*,char*,int ,int ,int ,int ) ;
 TYPE_1__* makeStringInfo () ;

StringInfo
TaskFilename(StringInfo directoryName, uint32 taskId)
{
 StringInfo taskFilename = makeStringInfo();
 appendStringInfo(taskFilename, "%s/%s%0*u",
      directoryName->data,
      TASK_FILE_PREFIX, MIN_TASK_FILENAME_WIDTH, taskId);

 return taskFilename;
}
