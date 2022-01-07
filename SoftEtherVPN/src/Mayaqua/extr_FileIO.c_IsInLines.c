
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUF ;


 char* CfgReadNextLine (int *) ;
 int Free (char*) ;
 scalar_t__ InStr (char*,char*) ;
 int IsEmptyStr (char*) ;
 int SeekBufToBegin (int *) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int Trim (char*) ;

bool IsInLines(BUF *buf, char *str, bool instr)
{
 bool ret = 0;

 if (buf == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 if (IsEmptyStr(str))
 {
  return 0;
 }

 SeekBufToBegin(buf);

 while (ret == 0)
 {
  char *line = CfgReadNextLine(buf);

  if (line == ((void*)0))
  {
   break;
  }

  Trim(line);

  if (IsEmptyStr(line) == 0)
  {
   if (StrCmpi(line, str) == 0)
   {
    ret = 1;
   }

   if (instr)
   {
    if (InStr(str, line))
    {
     ret = 1;
    }

    if (InStr(line, str))
    {
     ret = 1;
    }
   }
  }

  Free(line);
 }

 return ret;
}
