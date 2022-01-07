
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef size_t UINT ;


 size_t GetUniType (int ) ;
 size_t UniStrLen (int *) ;

UINT CalcUniToUtf8(wchar_t *s)
{
 UINT i, len, size;

 if (s == ((void*)0))
 {
  return 0;
 }

 size = 0;
 len = UniStrLen(s);
 for (i = 0;i < len;i++)
 {
  size += GetUniType(s[i]);
 }

 return size;
}
