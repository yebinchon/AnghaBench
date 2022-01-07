
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int tmp ;
typedef scalar_t__ UINT ;


 scalar_t__ INFINITE ;
 int MAX_SIZE ;
 scalar_t__ Malloc (scalar_t__) ;
 int UniFormat (scalar_t__*,int,char*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ UniSearchStr (scalar_t__*,scalar_t__*,scalar_t__) ;
 scalar_t__ UniStrLen (scalar_t__*) ;
 int WuUniReplace (scalar_t__**,scalar_t__*,char*) ;

__attribute__((used)) static wchar_t *WuUniGetTemplate(wchar_t **str, wchar_t *start, wchar_t *end, bool erase)
{
 UINT startidx, endidx, len, size, i;
 wchar_t *ret;

 if(str == ((void*)0) || *str == ((void*)0) || start == ((void*)0) || end == ((void*)0))
 {
  return ((void*)0);
 }

 startidx = UniSearchStr(*str, start, 0);
 if(startidx == INFINITE)
 {
  return ((void*)0);
 }
 startidx += UniStrLen(start);

 endidx = UniSearchStr(*str, end, startidx);
 if(endidx == INFINITE)
 {
  return ((void*)0);
 }

 len = endidx - startidx;
 size = (len + 1) * sizeof(wchar_t);
 ret = (wchar_t*)Malloc(size);
 for(i=0; i<len; i++)
 {
  ret[i] = (*str)[startidx + i];
 }
 ret[i] = 0;

 if(erase)
 {
  wchar_t tmp[MAX_SIZE*10];
  UniFormat(tmp, sizeof(tmp), L"%s%s%s", start, ret, end);
  WuUniReplace(str, tmp, L"");
 }
 return ret;
}
