
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int UniStrCmp (int *,int *) ;

int CompareUniStr(void *p1, void *p2)
{
 wchar_t *s1, *s2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 s1 = *(wchar_t **)p1;
 s2 = *(wchar_t **)p2;

 return UniStrCmp(s1, s2);
}
