
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef size_t UINT ;


 size_t UniStrLen (int*) ;

UINT UniStrWidth(wchar_t *str)
{
 UINT i, len, ret;

 if (str == ((void*)0))
 {
  return 0;
 }

 ret = 0;
 len = UniStrLen(str);
 for (i = 0;i < len;i++)
 {
  if (str[i] <= 255)
  {
   ret++;
  }
  else
  {
   ret += 2;
  }
 }
 return ret;
}
