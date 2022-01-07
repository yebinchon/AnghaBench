
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int UINT ;


 int ToInti (char*) ;
 int UniToStrForSingleChars (char*,int,int *) ;

UINT UniToInt(wchar_t *str)
{
 char tmp[128];

 if (str == ((void*)0))
 {
  return 0;
 }

 UniToStrForSingleChars(tmp, sizeof(tmp), str);

 return ToInti(tmp);
}
