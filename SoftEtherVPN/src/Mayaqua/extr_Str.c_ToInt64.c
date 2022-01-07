
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef size_t UINT ;


 size_t StrLen (char*) ;

UINT64 ToInt64(char *str)
{
 UINT len, i;
 UINT64 ret = 0;

 if (str == ((void*)0))
 {
  return 0;
 }

 len = StrLen(str);
 for (i = 0;i < len;i++)
 {
  char c = str[i];
  if (c != ',')
  {
   if ('0' <= c && c <= '9')
   {
    ret = ret * (UINT64)10 + (UINT64)(c - '0');
   }
   else
   {
    break;
   }
  }
 }

 return ret;
}
