
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int UniReplaceStrEx (int *,int ,int *,int *,int *,int) ;

UINT UniReplaceStr(wchar_t *dst, UINT size, wchar_t *string, wchar_t *old_keyword, wchar_t *new_keyword)
{
 return UniReplaceStrEx(dst, size, string, old_keyword, new_keyword, 1);
}
