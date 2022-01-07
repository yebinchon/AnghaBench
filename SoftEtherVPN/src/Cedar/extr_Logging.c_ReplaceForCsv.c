
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 size_t StrLen (char*) ;
 int Trim (char*) ;

void ReplaceForCsv(char *str)
{
 UINT i, len;

 if (str == ((void*)0))
 {
  return;
 }


 Trim(str);
 len = StrLen(str);

 for (i = 0;i < len;i++)
 {

  if (str[i] == ',')
  {
   str[i] = '_';
  }
 }
}
