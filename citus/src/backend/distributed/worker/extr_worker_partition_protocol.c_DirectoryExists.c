
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__* StringInfo ;


 int Assert (int ) ;
 scalar_t__ ENOENT ;
 int ERROR ;
 int S_ISDIR (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 scalar_t__ errno ;
 int stat (int ,struct stat*) ;

bool
DirectoryExists(StringInfo directoryName)
{
 bool directoryExists = 1;
 struct stat directoryStat;

 int statOK = stat(directoryName->data, &directoryStat);
 if (statOK == 0)
 {

  Assert(S_ISDIR(directoryStat.st_mode));
 }
 else
 {
  if (errno == ENOENT)
  {
   directoryExists = 0;
  }
  else
  {
   ereport(ERROR, (errcode_for_file_access(),
       errmsg("could not stat directory \"%s\": %m",
           directoryName->data)));
  }
 }

 return directoryExists;
}
