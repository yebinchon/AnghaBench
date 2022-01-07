
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

CURLcode Curl_convert_clone(struct Curl_easy *data,
                            const char *indata,
                            size_t insize,
                            char **outbuf)
{
  char *convbuf;
  (void)data;

  convbuf = malloc(insize);
  if(!convbuf)
    return CURLE_OUT_OF_MEMORY;

  memcpy(convbuf, indata, insize);
  *outbuf = convbuf;
  return CURLE_OK;
}
