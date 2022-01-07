
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int UniStrLen (int *) ;

UINT UniStrSize(wchar_t *str)
{

 if (str == ((void*)0))
 {
  return 0;
 }

 return (UniStrLen(str) + 1) * sizeof(wchar_t);
}
