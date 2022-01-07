
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int X ;
typedef int UINT ;


 int GetPrintNameFromX (int *,int,int *) ;
 int MAX_SIZE ;
 int UniToStr (char*,int ,int *) ;

void GetPrintNameFromXA(char *str, UINT size, X *x)
{
 wchar_t tmp[MAX_SIZE];

 if (str == ((void*)0) || x == ((void*)0))
 {
  return;
 }

 GetPrintNameFromX(tmp, sizeof(tmp), x);

 UniToStr(str, size, tmp);
}
