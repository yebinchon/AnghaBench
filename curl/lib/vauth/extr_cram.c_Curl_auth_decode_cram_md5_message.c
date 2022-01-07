
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_base64_decode (char const*,unsigned char**,size_t*) ;
 size_t strlen (char const*) ;

CURLcode Curl_auth_decode_cram_md5_message(const char *chlg64, char **outptr,
                                           size_t *outlen)
{
  CURLcode result = CURLE_OK;
  size_t chlg64len = strlen(chlg64);

  *outptr = ((void*)0);
  *outlen = 0;


  if(chlg64len && *chlg64 != '=')
    result = Curl_base64_decode(chlg64, (unsigned char **) outptr, outlen);

  return result;
}
