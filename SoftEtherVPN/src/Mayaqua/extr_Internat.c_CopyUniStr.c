
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int * Malloc (int) ;
 int UniStrCpy (int *,int ,int *) ;
 int UniStrLen (int *) ;

wchar_t *CopyUniStr(wchar_t *str)
{
 UINT len;
 wchar_t *dst;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }

 len = UniStrLen(str);
 dst = Malloc((len + 1) * sizeof(wchar_t));
 UniStrCpy(dst, 0, str);

 return dst;
}
