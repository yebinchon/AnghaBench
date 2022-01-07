
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURL_FNMATCH_FAIL ;
 int loop (unsigned char*,unsigned char*,int) ;

int Curl_fnmatch(void *ptr, const char *pattern, const char *string)
{
  (void)ptr;

  if(!pattern || !string) {
    return CURL_FNMATCH_FAIL;
  }
  return loop((unsigned char *)pattern, (unsigned char *)string, 2);
}
