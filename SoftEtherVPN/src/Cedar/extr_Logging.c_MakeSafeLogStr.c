
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 int EnPrintableAsciiStr (char*,char) ;
 size_t StrLen (char*) ;

void MakeSafeLogStr(char *str)
{
 UINT i, len;

 if (str == ((void*)0))
 {
  return;
 }

 EnPrintableAsciiStr(str, '?');

 len = StrLen(str);
 for (i = 0;i < len;i++)
 {
  if (str[i] == ',')
  {
   str[i] = '.';
  }
  else if (str[i] == ' ')
  {
   str[i] = '_';
  }
 }
}
