
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int CURLcode ;


 int base64 ;
 int base64_encode (int ,struct Curl_easy*,char const*,size_t,char**,size_t*) ;

CURLcode Curl_base64_encode(struct Curl_easy *data,
                            const char *inputbuff, size_t insize,
                            char **outptr, size_t *outlen)
{
  return base64_encode(base64, data, inputbuff, insize, outptr, outlen);
}
