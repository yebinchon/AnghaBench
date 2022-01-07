
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef size_t UINT ;


 int IsWordChar (scalar_t__) ;

UINT GetNextWordWidth(wchar_t *str)
{
 UINT i;
 UINT ret;

 if (str == ((void*)0))
 {
  return 0;
 }

 ret = 0;

 for (i = 0;;i++)
 {
  wchar_t c = str[i];

  if (c == 0)
  {
   break;
  }

  if (IsWordChar(c) == 0)
  {
   break;
  }

  ret++;
 }

 return ret;
}
