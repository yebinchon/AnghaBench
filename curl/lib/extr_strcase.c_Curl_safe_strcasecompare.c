
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Curl_strcasecompare (char const*,char const*) ;

int Curl_safe_strcasecompare(const char *first, const char *second)
{
  if(first && second)

    return Curl_strcasecompare(first, second);


  return (((void*)0) == first && ((void*)0) == second);
}
