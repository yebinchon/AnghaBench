
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int CURLcode ;


 int Curl_auth_create_login_message (struct Curl_easy*,char const*,char**,size_t*) ;

CURLcode Curl_auth_create_external_message(struct Curl_easy *data,
                                           const char *user, char **outptr,
                                           size_t *outlen)
{

  return Curl_auth_create_login_message(data, user, outptr, outlen);
}
