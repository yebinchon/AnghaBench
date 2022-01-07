
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_BAD_CONTENT_ENCODING ;
 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_base64_decode (char const*,unsigned char**,size_t*) ;
 int auth_digest_get_key_value (char*,char*,char*,size_t,char) ;
 int free (unsigned char*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static CURLcode auth_decode_digest_md5_message(const char *chlg64,
                                               char *nonce, size_t nlen,
                                               char *realm, size_t rlen,
                                               char *alg, size_t alen,
                                               char *qop, size_t qlen)
{
  CURLcode result = CURLE_OK;
  unsigned char *chlg = ((void*)0);
  size_t chlglen = 0;
  size_t chlg64len = strlen(chlg64);


  if(chlg64len && *chlg64 != '=') {
    result = Curl_base64_decode(chlg64, &chlg, &chlglen);
    if(result)
      return result;
  }


  if(!chlg)
    return CURLE_BAD_CONTENT_ENCODING;


  if(!auth_digest_get_key_value((char *) chlg, "nonce=\"", nonce, nlen,
                                '\"')) {
    free(chlg);
    return CURLE_BAD_CONTENT_ENCODING;
  }


  if(!auth_digest_get_key_value((char *) chlg, "realm=\"", realm, rlen,
                                '\"')) {

    strcpy(realm, "");
  }


  if(!auth_digest_get_key_value((char *) chlg, "algorithm=", alg, alen, ',')) {
    free(chlg);
    return CURLE_BAD_CONTENT_ENCODING;
  }


  if(!auth_digest_get_key_value((char *) chlg, "qop=\"", qop, qlen, '\"')) {
    free(chlg);
    return CURLE_BAD_CONTENT_ENCODING;
  }

  free(chlg);

  return CURLE_OK;
}
