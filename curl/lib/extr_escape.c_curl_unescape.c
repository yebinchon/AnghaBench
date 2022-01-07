
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* curl_easy_unescape (int *,char const*,int,int *) ;

char *curl_unescape(const char *string, int length)
{
  return curl_easy_unescape(((void*)0), string, length, ((void*)0));
}
