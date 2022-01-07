
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreatedResultsDirectory ;
 scalar_t__ EEXIST ;
 int ERROR ;
 char* IntermediateResultsDirectory () ;
 int S_IRWXU ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 int mkdir (char*,int ) ;

__attribute__((used)) static char *
CreateIntermediateResultsDirectory(void)
{
 char *resultDirectory = IntermediateResultsDirectory();
 int makeOK = 0;

 if (!CreatedResultsDirectory)
 {
  makeOK = mkdir(resultDirectory, S_IRWXU);
  if (makeOK != 0)
  {
   if (errno == EEXIST)
   {

    return resultDirectory;
   }

   ereport(ERROR, (errcode_for_file_access(),
       errmsg("could not create intermediate results directory "
           "\"%s\": %m",
           resultDirectory)));
  }

  CreatedResultsDirectory = 1;
 }

 return resultDirectory;
}
