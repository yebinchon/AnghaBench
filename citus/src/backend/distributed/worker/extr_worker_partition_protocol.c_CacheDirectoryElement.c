
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__* StringInfo ;


 int PG_JOB_CACHE_DIR ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 TYPE_1__* makeStringInfo () ;
 int pfree (TYPE_1__*) ;
 char* strstr (char const*,int ) ;

bool
CacheDirectoryElement(const char *filename)
{
 bool directoryElement = 0;
 char *directoryPathFound = ((void*)0);

 StringInfo directoryPath = makeStringInfo();
 appendStringInfo(directoryPath, "base/%s/", PG_JOB_CACHE_DIR);

 directoryPathFound = strstr(filename, directoryPath->data);





 if (directoryPathFound == filename)
 {
  directoryElement = 1;
 }

 pfree(directoryPath);

 return directoryElement;
}
