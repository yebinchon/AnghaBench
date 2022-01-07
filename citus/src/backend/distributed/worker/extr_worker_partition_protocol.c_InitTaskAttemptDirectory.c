
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__* StringInfo ;


 int CitusCreateDirectory (TYPE_1__*) ;
 int MIN_TASK_FILENAME_WIDTH ;
 TYPE_1__* TaskDirectoryName (int ,int ) ;
 int appendStringInfo (TYPE_1__*,char*,int ,int ,int ) ;
 TYPE_1__* makeStringInfo () ;
 int random () ;

__attribute__((used)) static StringInfo
InitTaskAttemptDirectory(uint64 jobId, uint32 taskId)
{
 StringInfo taskDirectoryName = TaskDirectoryName(jobId, taskId);
 uint32 randomId = (uint32) random();





 StringInfo taskAttemptDirectoryName = makeStringInfo();
 appendStringInfo(taskAttemptDirectoryName, "%s_%0*u",
      taskDirectoryName->data, MIN_TASK_FILENAME_WIDTH, randomId);





 CitusCreateDirectory(taskAttemptDirectoryName);

 return taskAttemptDirectoryName;
}
