
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp2 ;
typedef int tmp1 ;
typedef int X ;


 int GetPrintNameFromX (int *,int,int *) ;
 int MAX_SIZE ;
 int UniStrCmpi (int *,int *) ;

int CompareCert(void *p1, void *p2)
{
 X *x1, *x2;
 wchar_t tmp1[MAX_SIZE];
 wchar_t tmp2[MAX_SIZE];
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 x1 = *(X **)p1;
 x2 = *(X **)p2;
 if (x1 == ((void*)0) || x2 == ((void*)0))
 {
  return 0;
 }

 GetPrintNameFromX(tmp1, sizeof(tmp1), x1);
 GetPrintNameFromX(tmp2, sizeof(tmp2), x2);

 return UniStrCmpi(tmp1, tmp2);
}
