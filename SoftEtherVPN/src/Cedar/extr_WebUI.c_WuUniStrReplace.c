
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int CalcStrToUni (char*) ;
 int Free (int *) ;
 scalar_t__ Malloc (int ) ;
 int StrToUni (int *,int ,char*) ;
 int WuUniReplace (int **,int *,int *) ;

__attribute__((used)) static void WuUniStrReplace(wchar_t **buf, wchar_t *from, char *to)
{
 UINT unisize;
 wchar_t *tmp;

 if(buf == ((void*)0) || *buf == ((void*)0) || from == ((void*)0) || to == ((void*)0))
 {
  return;
 }

 unisize = CalcStrToUni(to);
 tmp = (wchar_t*)Malloc(unisize);
 StrToUni(tmp, unisize, to);
 WuUniReplace(buf, from, tmp);
 Free(tmp);
}
