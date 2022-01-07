
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int UniSearchStrEx (int *,int *,int ,int) ;

UINT UniSearchStr(wchar_t *string, wchar_t *keyword, UINT start)
{
 return UniSearchStrEx(string, keyword, start, 1);
}
