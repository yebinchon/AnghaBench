
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int Free (int *) ;
 scalar_t__ Malloc (int) ;
 int UniStrCat (int *,int,int *) ;
 int UniStrCpy (int *,int,int *) ;
 int UniStrLen (int *) ;
 int WuUniReplace (int **,int *,int *) ;

__attribute__((used)) static void WuUniInsertBefore(wchar_t **buf, wchar_t *insert, wchar_t *before)
{
 UINT tmpsize;
 wchar_t *tmp;

 if(buf == ((void*)0) || insert == ((void*)0) || before == ((void*)0))
 {
  return;
 }

 tmpsize = (UniStrLen(insert)+UniStrLen(before)+1)*sizeof(wchar_t);
 tmp = (wchar_t*)Malloc(tmpsize);
 UniStrCpy(tmp, tmpsize, insert);
 UniStrCat(tmp, tmpsize, before);
 WuUniReplace(buf, before, tmp);
 Free(tmp);
}
