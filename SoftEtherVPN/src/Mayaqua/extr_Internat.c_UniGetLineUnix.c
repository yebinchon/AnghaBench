
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int AnsiGetLineUnix (char*,int) ;
 int Free (char*) ;
 int MAX_SIZE ;
 int StrToUni (int *,int,char*) ;
 char* ZeroMalloc (int) ;

bool UniGetLineUnix(wchar_t *str, UINT size)
{
 char *str_a;
 UINT str_a_size = size;
 if (str == ((void*)0) || size < sizeof(wchar_t))
 {
  return 0;
 }
 if (str_a_size >= 0x7fffffff)
 {
  str_a_size = MAX_SIZE;
 }
 str_a_size *= 2;

 str_a = ZeroMalloc(str_a_size);

 AnsiGetLineUnix(str_a, str_a_size);

 StrToUni(str, size, str_a);

 Free(str_a);

 return 1;
}
