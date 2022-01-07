
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int StringInfo ;


 int MIN_TASK_FILENAME_WIDTH ;
 int TASK_TABLE_PREFIX ;
 int appendStringInfo (int ,char*,int ,int ,int ) ;
 int makeStringInfo () ;

StringInfo
TaskTableName(uint32 taskId)
{
 StringInfo taskTableName = makeStringInfo();
 appendStringInfo(taskTableName, "%s%0*u",
      TASK_TABLE_PREFIX, MIN_TASK_FILENAME_WIDTH, taskId);

 return taskTableName;
}
