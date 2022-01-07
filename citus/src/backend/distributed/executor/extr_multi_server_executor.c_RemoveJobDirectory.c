
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int StringInfo ;


 int CitusRemoveDirectory (int ) ;
 int CurrentResourceOwner ;
 int MasterJobDirectoryName (int ) ;
 int ResourceOwnerForgetJobDirectory (int ,int ) ;

void
RemoveJobDirectory(uint64 jobId)
{
 StringInfo jobDirectoryName = MasterJobDirectoryName(jobId);
 CitusRemoveDirectory(jobDirectoryName);

 ResourceOwnerForgetJobDirectory(CurrentResourceOwner, jobId);
}
