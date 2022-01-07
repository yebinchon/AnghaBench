
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int UniTrimLeft (int *) ;
 int UniTrimRight (int *) ;

void UniTrim(wchar_t *str)
{

 if (str == ((void*)0))
 {
  return;
 }

 UniTrimLeft(str);
 UniTrimRight(str);
}
