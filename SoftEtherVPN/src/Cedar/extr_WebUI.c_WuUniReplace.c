
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int Free (int *) ;
 scalar_t__ Malloc (int) ;
 int UniCalcReplaceStrEx (int *,int *,int *,int) ;
 int UniReplaceStr (int *,int,int *,int *,int *) ;

__attribute__((used)) static void WuUniReplace(wchar_t **buf, wchar_t *from, wchar_t *to)
{
 UINT dstsize;
 wchar_t *oldbuf;

 if(buf == ((void*)0) || from == ((void*)0) || to == ((void*)0))
 {
  return;
 }

 oldbuf = *buf;

 dstsize = (UniCalcReplaceStrEx(*buf, from, to, 1) + 1) * sizeof(wchar_t);
 *buf = (wchar_t*)Malloc(dstsize);
 UniReplaceStr(*buf, dstsize, oldbuf, from, to);
 Free(oldbuf);
}
