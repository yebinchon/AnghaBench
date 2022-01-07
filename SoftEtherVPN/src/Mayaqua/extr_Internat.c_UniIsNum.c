
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;


 int IsNum (char*) ;
 int MAX_SIZE ;
 int UniToStrForSingleChars (char*,int,int *) ;

bool UniIsNum(wchar_t *str)
{
 char tmp[MAX_SIZE];


 if (str == ((void*)0))
 {
  return 0;
 }

 UniToStrForSingleChars(tmp, sizeof(tmp), str);

 return IsNum(tmp);
}
