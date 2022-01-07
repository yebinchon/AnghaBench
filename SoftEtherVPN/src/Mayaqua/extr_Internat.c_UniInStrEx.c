
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ INFINITE ;
 scalar_t__ UniIsEmptyStr (int *) ;
 scalar_t__ UniSearchStrEx (int *,int *,int ,int) ;

bool UniInStrEx(wchar_t *str, wchar_t *keyword, bool case_sensitive)
{

 if (UniIsEmptyStr(str) || UniIsEmptyStr(keyword))
 {
  return 0;
 }

 if (UniSearchStrEx(str, keyword, 0, case_sensitive) == INFINITE)
 {
  return 0;
 }

 return 1;
}
