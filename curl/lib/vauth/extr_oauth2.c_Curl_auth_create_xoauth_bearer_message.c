
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_base64_encode (struct Curl_easy*,char*,int ,char**,size_t*) ;
 char* aprintf (char*,char const*,char const*) ;
 int free (char*) ;
 int strlen (char*) ;

CURLcode Curl_auth_create_xoauth_bearer_message(struct Curl_easy *data,
                                               const char *user,
                                               const char *bearer,
                                               char **outptr, size_t *outlen)
{
  CURLcode result = CURLE_OK;


  char *xoauth = aprintf("user=%s\1auth=Bearer %s\1\1", user, bearer);
  if(!xoauth)
    return CURLE_OUT_OF_MEMORY;


  result = Curl_base64_encode(data, xoauth, strlen(xoauth), outptr, outlen);

  free(xoauth);

  return result;
}
