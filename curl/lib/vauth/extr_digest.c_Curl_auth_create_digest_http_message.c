
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct digestdata {int algo; } ;
struct Curl_easy {int dummy; } ;
typedef int CURLcode ;
 int CURLE_UNSUPPORTED_PROTOCOL ;
 int Curl_md5it ;
 int Curl_sha256it ;
 int _Curl_auth_create_digest_http_message (struct Curl_easy*,char const*,char const*,unsigned char const*,unsigned char const*,struct digestdata*,char**,size_t*,int ,int ) ;
 int auth_digest_md5_to_ascii ;
 int auth_digest_sha256_to_ascii ;

CURLcode Curl_auth_create_digest_http_message(struct Curl_easy *data,
                                              const char *userp,
                                              const char *passwdp,
                                              const unsigned char *request,
                                              const unsigned char *uripath,
                                              struct digestdata *digest,
                                              char **outptr, size_t *outlen)
{
  switch(digest->algo) {
  case 133:
  case 132:
    return _Curl_auth_create_digest_http_message(data, userp, passwdp,
                                                 request, uripath, digest,
                                                 outptr, outlen,
                                                 auth_digest_md5_to_ascii,
                                                 Curl_md5it);

  case 131:
  case 130:
  case 129:
  case 128:
    return _Curl_auth_create_digest_http_message(data, userp, passwdp,
                                                 request, uripath, digest,
                                                 outptr, outlen,
                                                 auth_digest_sha256_to_ascii,
                                                 Curl_sha256it);

  default:
    return CURLE_UNSUPPORTED_PROTOCOL;
  }
}
