
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURL_FNMATCHFUNC_MATCH ;

__attribute__((used)) static int new_fnmatch(void *ptr,
                       const char *pattern, const char *string)
{
  (void)ptr;
  (void)pattern;
  (void)string;
  return CURL_FNMATCHFUNC_MATCH;
}
