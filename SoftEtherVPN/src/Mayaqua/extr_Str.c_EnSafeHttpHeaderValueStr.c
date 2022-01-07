
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 int Move (char*,char*,size_t) ;
 size_t StrLen (char*) ;

void EnSafeHttpHeaderValueStr(char *str, char replace)
{
 UINT length = 0;
 UINT index = 0;


 if (str == ((void*)0))
 {
  return;
 }

 length = StrLen(str);
 while (index < length)
 {
  if (str[index] == '\r' || str[index] == '\n')
  {
   if (replace == ' ')
   {
    Move(&str[index], &str[index + 1], length - index);
   }
   else
   {
    str[index] = replace;
   }
  }
  else if (str[index] == '\\')
  {
   if (str[index + 1] == 'r' || str[index + 1] == 'n')
   {
    if (replace == ' ')
    {
     Move(&str[index], &str[index + 2], length - index);
     index--;
    }
    else
    {
     str[index] = str[index + 1] = replace;
     index++;
    }
   }
  }
  index++;
 }
}
