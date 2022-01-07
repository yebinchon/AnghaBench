
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Curl_strcasecompare (char const*,char const*) ;

int curl_strequal(const char *first, const char *second)
{
  return Curl_strcasecompare(first, second);
}
