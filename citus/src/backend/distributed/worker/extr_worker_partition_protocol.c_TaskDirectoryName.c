
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__* StringInfo ;


 TYPE_1__* JobDirectoryName (int ) ;
 int MIN_TASK_FILENAME_WIDTH ;
 int TASK_FILE_PREFIX ;
 int appendStringInfo (TYPE_1__*,char*,int ,int ,int ,int ) ;
 TYPE_1__* makeStringInfo () ;

StringInfo
TaskDirectoryName(uint64 jobId, uint32 taskId)
{
 StringInfo jobDirectoryName = JobDirectoryName(jobId);

 StringInfo taskDirectoryName = makeStringInfo();
 appendStringInfo(taskDirectoryName, "%s/%s%0*u",
      jobDirectoryName->data,
      TASK_FILE_PREFIX, MIN_TASK_FILENAME_WIDTH, taskId);

 return taskDirectoryName;
}
