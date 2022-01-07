
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int StringInfo ;


 int GetUserId () ;
 int TaskFilename (int ,int ) ;
 int appendStringInfo (int ,char*,int ) ;

StringInfo
UserTaskFilename(StringInfo directoryName, uint32 taskId)
{
 StringInfo taskFilename = TaskFilename(directoryName, taskId);

 appendStringInfo(taskFilename, ".%u", GetUserId());

 return taskFilename;
}
