
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int CURLcode ;


 int CURLE_OUT_OF_MEMORY ;
 int Curl_base64_encode (struct Curl_easy*,char*,size_t,char**,size_t*) ;
 int SIZE_T_MAX ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

CURLcode Curl_auth_create_plain_message(struct Curl_easy *data,
                                        const char *authzid,
                                        const char *authcid,
                                        const char *passwd,
                                        char **outptr, size_t *outlen)
{
  CURLcode result;
  char *plainauth;
  size_t zlen;
  size_t clen;
  size_t plen;
  size_t plainlen;

  *outlen = 0;
  *outptr = ((void*)0);
  zlen = (authzid == ((void*)0) ? 0 : strlen(authzid));
  clen = strlen(authcid);
  plen = strlen(passwd);


  if(((zlen + clen) > SIZE_T_MAX/4) || (plen > (SIZE_T_MAX/2 - 2)))
    return CURLE_OUT_OF_MEMORY;
  plainlen = zlen + clen + plen + 2;

  plainauth = malloc(plainlen);
  if(!plainauth)
    return CURLE_OUT_OF_MEMORY;


  if(zlen != 0)
    memcpy(plainauth, authzid, zlen);
  plainauth[zlen] = '\0';
  memcpy(plainauth + zlen + 1, authcid, clen);
  plainauth[zlen + clen + 1] = '\0';
  memcpy(plainauth + zlen + clen + 2, passwd, plen);


  result = Curl_base64_encode(data, plainauth, plainlen, outptr, outlen);
  free(plainauth);

  return result;
}
