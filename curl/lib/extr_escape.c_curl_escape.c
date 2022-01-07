
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* curl_easy_escape (int *,char const*,int) ;

char *curl_escape(const char *string, int inlength)
{
  return curl_easy_escape(((void*)0), string, inlength);
}
