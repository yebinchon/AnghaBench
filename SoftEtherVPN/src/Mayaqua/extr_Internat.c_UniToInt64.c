
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int UINT64 ;


 int MAX_SIZE ;
 int ToInt64 (char*) ;
 int UniToStrForSingleChars (char*,int,int *) ;

UINT64 UniToInt64(wchar_t *str)
{
 char tmp[MAX_SIZE];

 if (str == ((void*)0))
 {
  return 0;
 }

 UniToStrForSingleChars(tmp, sizeof(tmp), str);

 return ToInt64(tmp);
}
