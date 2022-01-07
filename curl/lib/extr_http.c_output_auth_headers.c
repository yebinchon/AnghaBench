
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* user; } ;
struct TYPE_3__ {scalar_t__ user_passwd; scalar_t__ proxy_user_passwd; } ;
struct connectdata {char* user; TYPE_2__ http_proxy; scalar_t__ oauth_bearer; TYPE_1__ bits; struct Curl_easy* data; } ;
struct auth {scalar_t__ picked; void* multipass; void* done; } ;
struct Curl_easy {int dummy; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLAUTH_BASIC ;
 scalar_t__ CURLAUTH_BEARER ;
 scalar_t__ CURLAUTH_DIGEST ;
 scalar_t__ CURLAUTH_NEGOTIATE ;
 scalar_t__ CURLAUTH_NTLM ;
 scalar_t__ CURLAUTH_NTLM_WB ;
 scalar_t__ CURLE_OK ;
 int Curl_checkProxyheaders (struct connectdata*,char*) ;
 int Curl_checkheaders (struct connectdata*,char*) ;
 scalar_t__ Curl_output_digest (struct connectdata*,int,unsigned char const*,unsigned char const*) ;
 scalar_t__ Curl_output_negotiate (struct connectdata*,int) ;
 scalar_t__ Curl_output_ntlm (struct connectdata*,int) ;
 scalar_t__ Curl_output_ntlm_wb (struct connectdata*,int) ;
 void* FALSE ;
 void* TRUE ;
 scalar_t__ http_output_basic (struct connectdata*,int) ;
 scalar_t__ http_output_bearer (struct connectdata*) ;
 int infof (struct Curl_easy*,char*,char*,char const*,char*) ;

__attribute__((used)) static CURLcode
output_auth_headers(struct connectdata *conn,
                    struct auth *authstatus,
                    const char *request,
                    const char *path,
                    bool proxy)
{
  const char *auth = ((void*)0);
  CURLcode result = CURLE_OK;

  struct Curl_easy *data = conn->data;
  if(authstatus->picked == CURLAUTH_DIGEST) {
    auth = "Digest";
    result = Curl_output_digest(conn,
                                proxy,
                                (const unsigned char *)request,
                                (const unsigned char *)path);
    if(result)
      return result;
  }
  else

  if(authstatus->picked == CURLAUTH_BASIC) {

    if((proxy && conn->bits.proxy_user_passwd &&
        !Curl_checkProxyheaders(conn, "Proxy-authorization")) ||
       (!proxy && conn->bits.user_passwd &&
        !Curl_checkheaders(conn, "Authorization"))) {
      auth = "Basic";
      result = http_output_basic(conn, proxy);
      if(result)
        return result;
    }



    authstatus->done = TRUE;
  }
  if(authstatus->picked == CURLAUTH_BEARER) {

    if((!proxy && conn->oauth_bearer &&
        !Curl_checkheaders(conn, "Authorization:"))) {
      auth = "Bearer";
      result = http_output_bearer(conn);
      if(result)
        return result;
    }



    authstatus->done = TRUE;
  }

  if(auth) {
    infof(data, "%s auth using %s with user '%s'\n",
          proxy ? "Proxy" : "Server", auth,
          proxy ? (conn->http_proxy.user ? conn->http_proxy.user : "") :
                  (conn->user ? conn->user : ""));
    authstatus->multipass = (!authstatus->done) ? TRUE : FALSE;
  }
  else
    authstatus->multipass = FALSE;

  return CURLE_OK;
}
