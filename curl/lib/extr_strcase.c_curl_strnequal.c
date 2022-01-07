
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Curl_strncasecompare (char const*,char const*,size_t) ;

int curl_strnequal(const char *first, const char *second, size_t max)
{
  return Curl_strncasecompare(first, second, max);
}
