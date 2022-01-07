
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int CitusCreateDirectory (int ) ;
 int CitusRemoveDirectory (int ) ;
 int FreeStringInfo (int ) ;
 int PG_JOB_CACHE_DIR ;
 int appendStringInfo (int ,char*,int ) ;
 int makeStringInfo () ;

__attribute__((used)) static void
TrackerCleanupJobDirectories(void)
{

 StringInfo jobCacheDirectory = makeStringInfo();
 appendStringInfo(jobCacheDirectory, "base/%s", PG_JOB_CACHE_DIR);

 CitusRemoveDirectory(jobCacheDirectory);
 CitusCreateDirectory(jobCacheDirectory);

 FreeStringInfo(jobCacheDirectory);
}
