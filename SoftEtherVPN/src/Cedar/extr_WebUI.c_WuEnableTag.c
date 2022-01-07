
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;


 int MAX_SIZE ;
 int UniFormat (int *,int,char*,int *) ;
 int WuUniReplace (int **,int *,char*) ;

__attribute__((used)) static void WuEnableTag(wchar_t **buf, wchar_t *keyword)
{
 wchar_t tmp[MAX_SIZE];
 if(buf == ((void*)0) || keyword == ((void*)0))
 {
  return;
 }

 UniFormat(tmp, sizeof(tmp), L"!--%s", keyword);
 WuUniReplace(buf, tmp, L"");

 UniFormat(tmp, sizeof(tmp), L"%s--", keyword);
 WuUniReplace(buf, tmp, L"");
 return;
}
