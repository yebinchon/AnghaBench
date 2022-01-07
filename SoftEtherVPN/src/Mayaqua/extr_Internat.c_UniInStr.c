
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int UniInStrEx (int *,int *,int) ;

bool UniInStr(wchar_t *str, wchar_t *keyword)
{
 return UniInStrEx(str, keyword, 0);
}
