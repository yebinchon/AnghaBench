
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int int64 ;


 char* QueryResultFileName (char*) ;
 int stat (char*,struct stat*) ;

int64
IntermediateResultSize(char *resultId)
{
 char *resultFileName = ((void*)0);
 struct stat fileStat;
 int statOK = 0;

 resultFileName = QueryResultFileName(resultId);
 statOK = stat(resultFileName, &fileStat);
 if (statOK < 0)
 {
  return -1;
 }

 return (int64) fileStat.st_size;
}
