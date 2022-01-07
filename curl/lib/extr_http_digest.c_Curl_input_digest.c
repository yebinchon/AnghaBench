
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct digestdata {int dummy; } ;
struct connectdata {struct Curl_easy* data; } ;
struct TYPE_2__ {struct digestdata digest; struct digestdata proxydigest; } ;
struct Curl_easy {TYPE_1__ state; } ;
typedef int CURLcode ;


 int CURLE_BAD_CONTENT_ENCODING ;
 int Curl_auth_decode_digest_http_message (char const*,struct digestdata*) ;
 scalar_t__ ISSPACE (char const) ;
 int checkprefix (char*,char const*) ;
 int strlen (char*) ;

CURLcode Curl_input_digest(struct connectdata *conn,
                           bool proxy,
                           const char *header)

{
  struct Curl_easy *data = conn->data;


  struct digestdata *digest;

  if(proxy) {
    digest = &data->state.proxydigest;
  }
  else {
    digest = &data->state.digest;
  }

  if(!checkprefix("Digest", header))
    return CURLE_BAD_CONTENT_ENCODING;

  header += strlen("Digest");
  while(*header && ISSPACE(*header))
    header++;

  return Curl_auth_decode_digest_http_message(header, digest);
}
