
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_base64_encode (struct Curl_easy*,char const*,size_t,char**,size_t*) ;
 char* strdup (char*) ;
 size_t strlen (char const*) ;

CURLcode Curl_auth_create_login_message(struct Curl_easy *data,
                                        const char *valuep, char **outptr,
                                        size_t *outlen)
{
  size_t vlen = strlen(valuep);

  if(!vlen) {

    *outptr = strdup("=");
    if(*outptr) {
      *outlen = (size_t) 1;
      return CURLE_OK;
    }

    *outlen = 0;
    return CURLE_OUT_OF_MEMORY;
  }


  return Curl_base64_encode(data, valuep, vlen, outptr, outlen);
}
