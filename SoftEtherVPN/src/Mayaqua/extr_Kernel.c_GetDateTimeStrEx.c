
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp2 ;
typedef int tmp1 ;
typedef int UINT ;
typedef int SYSTEMTIME ;
typedef int LOCALE ;


 int GetDateStrEx (int *,int,int *,int *) ;
 int GetTimeStrEx (int *,int,int *,int *) ;
 int MAX_SIZE ;
 int UniFormat (int *,int ,char*,int *,int *) ;

void GetDateTimeStrEx(wchar_t *str, UINT size, SYSTEMTIME *st, LOCALE *locale)
{
 wchar_t tmp1[MAX_SIZE];
 wchar_t tmp2[MAX_SIZE];

 if (str == ((void*)0) || st == ((void*)0))
 {
  return;
 }

 GetDateStrEx(tmp1, sizeof(tmp1), st, locale);
 GetTimeStrEx(tmp2, sizeof(tmp2), st, locale);
 UniFormat(str, size, L"%s %s", tmp1, tmp2);
}
