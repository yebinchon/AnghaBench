
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef scalar_t__ USHORT ;
typedef size_t UINT ;


 scalar_t__* Malloc (size_t) ;

wchar_t *Utf16ToWide(USHORT *str)
{
 wchar_t *ret;
 UINT len, i;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }

 len = 0;
 while (1)
 {
  if (str[len] == 0)
  {
   break;
  }
  len++;
 }

 ret = Malloc((len + 1) * sizeof(wchar_t));
 for (i = 0;i < len + 1;i++)
 {
  ret[i] = (wchar_t)str[i];
 }

 return ret;
}
