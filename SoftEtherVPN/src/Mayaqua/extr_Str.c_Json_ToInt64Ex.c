
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef size_t UINT ;



UINT64 Json_ToInt64Ex(char *str, char **endptr, bool *error)
{
 UINT i;
 UINT64 ret = 0;
 if (error != ((void*)0)) *error = 1;

 if (str == ((void*)0))
 {
  if (endptr != ((void*)0))
  {
   *endptr = ((void*)0);
  }
  return 0;
 }

 for (i = 0;;i++)
 {
  char c = str[i];
  if (endptr != ((void*)0))
  {
   *endptr = &str[i];
  }
  if (c == 0)
  {
   break;
  }
  if ('0' <= c && c <= '9')
  {
   ret = ret * (UINT64)10 + (UINT64)(c - '0');
   if (error != ((void*)0)) *error = 0;
  }
  else
  {
   break;
  }
 }

 return ret;
}
