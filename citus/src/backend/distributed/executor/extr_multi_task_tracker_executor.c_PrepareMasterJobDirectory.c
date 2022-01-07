
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int jobId; } ;
typedef int StringInfo ;
typedef TYPE_1__ Job ;


 int CitusCreateDirectory (int ) ;
 int CurrentResourceOwner ;
 int MasterJobDirectoryName (int ) ;
 int ResourceOwnerEnlargeJobDirectories (int ) ;
 int ResourceOwnerRememberJobDirectory (int ,int ) ;

__attribute__((used)) static void
PrepareMasterJobDirectory(Job *workerJob)
{
 StringInfo jobDirectoryName = MasterJobDirectoryName(workerJob->jobId);
 CitusCreateDirectory(jobDirectoryName);

 ResourceOwnerEnlargeJobDirectories(CurrentResourceOwner);
 ResourceOwnerRememberJobDirectory(CurrentResourceOwner, workerJob->jobId);
}
