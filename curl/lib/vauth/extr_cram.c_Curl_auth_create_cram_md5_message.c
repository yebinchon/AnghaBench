
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;
typedef int HMAC_context ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_HMAC_MD5 ;
 int Curl_HMAC_final (int *,unsigned char*) ;
 int * Curl_HMAC_init (int ,unsigned char const*,int ) ;
 int Curl_HMAC_update (int *,unsigned char const*,int ) ;
 int Curl_base64_encode (struct Curl_easy*,char*,int ,char**,size_t*) ;
 int MD5_DIGEST_LEN ;
 char* aprintf (char*,char const*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;
 int curlx_uztoui (size_t) ;
 int free (char*) ;
 size_t strlen (char const*) ;

CURLcode Curl_auth_create_cram_md5_message(struct Curl_easy *data,
                                           const char *chlg,
                                           const char *userp,
                                           const char *passwdp,
                                           char **outptr, size_t *outlen)
{
  CURLcode result = CURLE_OK;
  size_t chlglen = 0;
  HMAC_context *ctxt;
  unsigned char digest[MD5_DIGEST_LEN];
  char *response;

  if(chlg)
    chlglen = strlen(chlg);


  ctxt = Curl_HMAC_init(Curl_HMAC_MD5,
                        (const unsigned char *) passwdp,
                        curlx_uztoui(strlen(passwdp)));
  if(!ctxt)
    return CURLE_OUT_OF_MEMORY;


  if(chlglen > 0)
    Curl_HMAC_update(ctxt, (const unsigned char *) chlg,
                     curlx_uztoui(chlglen));


  Curl_HMAC_final(ctxt, digest);


  response = aprintf(
    "%s %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
    userp, digest[0], digest[1], digest[2], digest[3], digest[4],
    digest[5], digest[6], digest[7], digest[8], digest[9], digest[10],
    digest[11], digest[12], digest[13], digest[14], digest[15]);
  if(!response)
    return CURLE_OUT_OF_MEMORY;


  result = Curl_base64_encode(data, response, 0, outptr, outlen);

  free(response);

  return result;
}
