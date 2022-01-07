
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * CopyUniStr (int *) ;

wchar_t *UniCopyStr(wchar_t *str)
{
 return CopyUniStr(str);
}
