
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int LIST ;


 int Free (int *) ;
 int * WuUniGetTemplate (int **,int *,int *,int) ;
 int * WuUniMakeTable (int *) ;

__attribute__((used)) static LIST *WuUniMakeTableFromTemplate(wchar_t **str, wchar_t *start, wchar_t *end)
{
 wchar_t *tmpl = WuUniGetTemplate(str, start, end, 1);
 LIST *ret = WuUniMakeTable(tmpl);
 Free(tmpl);
 return ret;
}
