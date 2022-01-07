
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
struct TYPE_6__ {char const* data; } ;
typedef TYPE_1__* StringInfo ;
typedef int DIR ;


 int * AllocateDir (char const*) ;
 scalar_t__ ENOENT ;
 int ERROR ;
 int FileIsLink (char const*,struct stat) ;
 int FreeDir (int *) ;
 int FreeStringInfo (TYPE_1__*) ;
 int MAXPGPATH ;
 struct dirent* ReadDir (int *,char const*) ;
 scalar_t__ S_ISDIR (int ) ;
 int appendStringInfo (TYPE_1__*,char*,char const*,char const*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;
 TYPE_1__* makeStringInfo () ;
 int rmdir (char*) ;
 int stat (char const*,struct stat*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;
 int unlink (char*) ;

void
CitusRemoveDirectory(StringInfo filename)
{
 struct stat fileStat;
 int removed = 0;

 int fileStated = stat(filename->data, &fileStat);
 if (fileStated < 0)
 {
  if (errno == ENOENT)
  {
   return;
  }
  else
  {
   ereport(ERROR, (errcode_for_file_access(),
       errmsg("could not stat file \"%s\": %m", filename->data)));
  }
 }






 if (S_ISDIR(fileStat.st_mode) && !FileIsLink(filename->data, fileStat))
 {
  const char *directoryName = filename->data;
  struct dirent *directoryEntry = ((void*)0);

  DIR *directory = AllocateDir(directoryName);
  if (directory == ((void*)0))
  {
   ereport(ERROR, (errcode_for_file_access(),
       errmsg("could not open directory \"%s\": %m",
           directoryName)));
  }

  directoryEntry = ReadDir(directory, directoryName);
  for (; directoryEntry != ((void*)0); directoryEntry = ReadDir(directory, directoryName))
  {
   const char *baseFilename = directoryEntry->d_name;
   StringInfo fullFilename = ((void*)0);


   if (strncmp(baseFilename, ".", MAXPGPATH) == 0 ||
    strncmp(baseFilename, "..", MAXPGPATH) == 0)
   {
    continue;
   }

   fullFilename = makeStringInfo();
   appendStringInfo(fullFilename, "%s/%s", directoryName, baseFilename);

   CitusRemoveDirectory(fullFilename);

   FreeStringInfo(fullFilename);
  }

  FreeDir(directory);
 }


 if (S_ISDIR(fileStat.st_mode))
 {
  removed = rmdir(filename->data);
 }
 else
 {
  removed = unlink(filename->data);
 }

 if (removed != 0)
 {
  ereport(ERROR, (errcode_for_file_access(),
      errmsg("could not remove file \"%s\": %m", filename->data)));
 }
}
