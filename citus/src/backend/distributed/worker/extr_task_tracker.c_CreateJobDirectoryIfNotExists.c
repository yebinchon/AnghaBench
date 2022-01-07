
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int StringInfo ;


 int CitusCreateDirectory (int ) ;
 int DirectoryExists (int ) ;
 int FreeStringInfo (int ) ;
 int JobDirectoryName (int ) ;

__attribute__((used)) static void
CreateJobDirectoryIfNotExists(uint64 jobId)
{
 StringInfo jobDirectoryName = JobDirectoryName(jobId);

 bool jobDirectoryExists = DirectoryExists(jobDirectoryName);
 if (!jobDirectoryExists)
 {
  CitusCreateDirectory(jobDirectoryName);
 }

 FreeStringInfo(jobDirectoryName);
}
