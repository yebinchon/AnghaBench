
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef size_t UINT ;


 size_t UniStrLen (int *) ;
 int UniToUpper (int ) ;

void UniStrUpper(wchar_t *str)
{
 UINT i, len;

 if (str == ((void*)0))
 {
  return;
 }

 len = UniStrLen(str);
 for (i = 0;i < len;i++)
 {
  str[i] = UniToUpper(str[i]);
 }
}
