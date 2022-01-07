
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int CURLE_CONV_FAILED ;
 int CURLE_OK ;
 int PLATFORM_CONV_OK ;
 int platform_a2e (char**,size_t*,char**,size_t*) ;

__attribute__((used)) static CURLcode my_conv_from_ascii_to_ebcdic(char *buffer, size_t length)
{
  char *tempptrin, *tempptrout;
  size_t bytes = length;
  int rc;
  tempptrin = tempptrout = buffer;
  rc = platform_a2e(&tempptrin, &bytes, &tempptrout, &bytes);
  if(rc == PLATFORM_CONV_OK) {
    return CURLE_OK;
  }
  else {
    return CURLE_CONV_FAILED;
  }
}
