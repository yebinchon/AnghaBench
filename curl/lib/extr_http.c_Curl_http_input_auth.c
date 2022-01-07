
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct connectdata {int http_negotiate_state; int proxy_negotiate_state; struct Curl_easy* data; } ;
struct auth {unsigned long avail; unsigned long picked; } ;
struct TYPE_8__ {void* authproblem; struct auth authhost; struct auth authproxy; } ;
struct TYPE_7__ {scalar_t__ newurl; } ;
struct TYPE_6__ {int url; } ;
struct TYPE_5__ {unsigned long proxyauthavail; unsigned long httpauthavail; } ;
struct Curl_easy {TYPE_4__ state; TYPE_3__ req; TYPE_2__ change; TYPE_1__ info; } ;
typedef int curlnegotiate ;
typedef scalar_t__ CURLcode ;


 unsigned long CURLAUTH_BASIC ;
 unsigned long CURLAUTH_BEARER ;
 unsigned long CURLAUTH_DIGEST ;
 unsigned long CURLAUTH_NEGOTIATE ;
 void* CURLAUTH_NONE ;
 unsigned long CURLAUTH_NTLM ;
 unsigned long CURLAUTH_NTLM_WB ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ Curl_auth_is_digest_supported () ;
 scalar_t__ Curl_auth_is_ntlm_supported () ;
 scalar_t__ Curl_auth_is_spnego_supported () ;
 scalar_t__ Curl_input_digest (struct connectdata*,int,char const*) ;
 scalar_t__ Curl_input_negotiate (struct connectdata*,int,char const*) ;
 scalar_t__ Curl_input_ntlm (struct connectdata*,int,char const*) ;
 scalar_t__ Curl_input_ntlm_wb (struct connectdata*,int,char const*) ;
 int DEBUGASSERT (int) ;
 void* FALSE ;
 int GSS_AUTHRECV ;
 scalar_t__ ISSPACE (char const) ;
 void* TRUE ;
 scalar_t__ checkprefix (char*,char const*) ;
 int infof (struct Curl_easy*,char*) ;
 scalar_t__ strdup (int ) ;

CURLcode Curl_http_input_auth(struct connectdata *conn, bool proxy,
                              const char *auth)
{



  struct Curl_easy *data = conn->data;





  unsigned long *availp;
  struct auth *authp;

  if(proxy) {
    availp = &data->info.proxyauthavail;
    authp = &data->state.authproxy;
  }
  else {
    availp = &data->info.httpauthavail;
    authp = &data->state.authhost;
  }
  while(*auth) {
        if(checkprefix("Digest", auth)) {
          if((authp->avail & CURLAUTH_DIGEST) != 0)
            infof(data, "Ignoring duplicate digest auth header.\n");
          else if(Curl_auth_is_digest_supported()) {
            CURLcode result;

            *availp |= CURLAUTH_DIGEST;
            authp->avail |= CURLAUTH_DIGEST;





            result = Curl_input_digest(conn, proxy, auth);
            if(result) {
              infof(data, "Authentication problem. Ignoring this.\n");
              data->state.authproblem = TRUE;
            }
          }
        }
        else

          if(checkprefix("Basic", auth)) {
            *availp |= CURLAUTH_BASIC;
            authp->avail |= CURLAUTH_BASIC;
            if(authp->picked == CURLAUTH_BASIC) {



              authp->avail = CURLAUTH_NONE;
              infof(data, "Authentication problem. Ignoring this.\n");
              data->state.authproblem = TRUE;
            }
          }
          else
            if(checkprefix("Bearer", auth)) {
              *availp |= CURLAUTH_BEARER;
              authp->avail |= CURLAUTH_BEARER;
              if(authp->picked == CURLAUTH_BEARER) {


                authp->avail = CURLAUTH_NONE;
                infof(data, "Authentication problem. Ignoring this.\n");
                data->state.authproblem = TRUE;
              }
            }


    while(*auth && *auth != ',')
      auth++;
    if(*auth == ',')
      auth++;
    while(*auth && ISSPACE(*auth))
      auth++;
  }

  return CURLE_OK;
}
