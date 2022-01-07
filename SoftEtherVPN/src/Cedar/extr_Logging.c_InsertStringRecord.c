
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOG ;


 char* CopyStr (char*) ;
 int InsertRecord (int *,char*,int ) ;
 int StringRecordParseProc ;

void InsertStringRecord(LOG *g, char *str)
{
 char *str_copy;

 if (g == ((void*)0) || str == ((void*)0))
 {
  return;
 }

 str_copy = CopyStr(str);

 InsertRecord(g, str_copy, StringRecordParseProc);
}
