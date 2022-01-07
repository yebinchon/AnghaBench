
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef scalar_t__ File ;


 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ PathNameOpenFilePerm (char*,int,int) ;
 scalar_t__ S_ISDIR (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 int stat (char const*,struct stat*) ;

File
FileOpenForTransmit(const char *filename, int fileFlags, int fileMode)
{
 File fileDesc = -1;
 int fileStated = -1;
 struct stat fileStat;

 fileStated = stat(filename, &fileStat);
 if (fileStated >= 0)
 {
  if (S_ISDIR(fileStat.st_mode))
  {
   ereport(ERROR, (errcode(ERRCODE_WRONG_OBJECT_TYPE),
       errmsg("\"%s\" is a directory", filename)));
  }
 }

 fileDesc = PathNameOpenFilePerm((char *) filename, fileFlags, fileMode);
 if (fileDesc < 0)
 {
  ereport(ERROR, (errcode_for_file_access(),
      errmsg("could not open file \"%s\": %m", filename)));
 }

 return fileDesc;
}
