
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int StringInfo ;


 int AccessExclusiveLock ;
 int CitusCreateDirectory (int ) ;
 int DirectoryExists (int ) ;
 int JobDirectoryName (int ) ;
 int LockJobResource (int ,int ) ;
 int TaskDirectoryName (int ,int ) ;
 int UnlockJobResource (int ,int ) ;

StringInfo
InitTaskDirectory(uint64 jobId, uint32 taskId)
{
 bool jobDirectoryExists = 0;
 bool taskDirectoryExists = 0;





 StringInfo jobDirectoryName = JobDirectoryName(jobId);
 StringInfo taskDirectoryName = TaskDirectoryName(jobId, taskId);

 LockJobResource(jobId, AccessExclusiveLock);

 jobDirectoryExists = DirectoryExists(jobDirectoryName);
 if (!jobDirectoryExists)
 {
  CitusCreateDirectory(jobDirectoryName);
 }

 taskDirectoryExists = DirectoryExists(taskDirectoryName);
 if (!taskDirectoryExists)
 {
  CitusCreateDirectory(taskDirectoryName);
 }

 UnlockJobResource(jobId, AccessExclusiveLock);

 return taskDirectoryName;
}
