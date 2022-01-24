#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* user; } ;
struct TYPE_3__ {scalar_t__ user_passwd; scalar_t__ proxy_user_passwd; } ;
struct connectdata {char* user; TYPE_2__ http_proxy; scalar_t__ oauth_bearer; TYPE_1__ bits; struct Curl_easy* data; } ;
struct auth {scalar_t__ picked; void* multipass; void* done; } ;
struct Curl_easy {int dummy; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLAUTH_BASIC ; 
 scalar_t__ CURLAUTH_BEARER ; 
 scalar_t__ CURLAUTH_DIGEST ; 
 scalar_t__ CURLAUTH_NEGOTIATE ; 
 scalar_t__ CURLAUTH_NTLM ; 
 scalar_t__ CURLAUTH_NTLM_WB ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct connectdata*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct connectdata*,char*) ; 
 scalar_t__ FUNC2 (struct connectdata*,int,unsigned char const*,unsigned char const*) ; 
 scalar_t__ FUNC3 (struct connectdata*,int) ; 
 scalar_t__ FUNC4 (struct connectdata*,int) ; 
 scalar_t__ FUNC5 (struct connectdata*,int) ; 
 void* FALSE ; 
 void* TRUE ; 
 scalar_t__ FUNC6 (struct connectdata*,int) ; 
 scalar_t__ FUNC7 (struct connectdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct Curl_easy*,char*,char*,char const*,char*) ; 

__attribute__((used)) static CURLcode
FUNC9(struct connectdata *conn,
                    struct auth *authstatus,
                    const char *request,
                    const char *path,
                    bool proxy)
{
  const char *auth = NULL;
  CURLcode result = CURLE_OK;
#if !defined(CURL_DISABLE_VERBOSE_STRINGS) || defined(USE_SPNEGO)
  struct Curl_easy *data = conn->data;
#endif

#ifdef CURL_DISABLE_CRYPTO_AUTH
  (void)request;
  (void)path;
#endif

#ifdef USE_SPNEGO
  if(authstatus->picked == CURLAUTH_NEGOTIATE) {
    auth = "Negotiate";
    result = Curl_output_negotiate(conn, proxy);
    if(result)
      return result;
  }
  else
#endif
#ifdef USE_NTLM
  if(authstatus->picked == CURLAUTH_NTLM) {
    auth = "NTLM";
    result = Curl_output_ntlm(conn, proxy);
    if(result)
      return result;
  }
  else
#endif
#if defined(USE_NTLM) && defined(NTLM_WB_ENABLED)
  if(authstatus->picked == CURLAUTH_NTLM_WB) {
    auth = "NTLM_WB";
    result = Curl_output_ntlm_wb(conn, proxy);
    if(result)
      return result;
  }
  else
#endif
#ifndef CURL_DISABLE_CRYPTO_AUTH
  if(authstatus->picked == CURLAUTH_DIGEST) {
    auth = "Digest";
    result = FUNC2(conn,
                                proxy,
                                (const unsigned char *)request,
                                (const unsigned char *)path);
    if(result)
      return result;
  }
  else
#endif
  if(authstatus->picked == CURLAUTH_BASIC) {
    /* Basic */
    if((proxy && conn->bits.proxy_user_passwd &&
        !FUNC0(conn, "Proxy-authorization")) ||
       (!proxy && conn->bits.user_passwd &&
        !FUNC1(conn, "Authorization"))) {
      auth = "Basic";
      result = FUNC6(conn, proxy);
      if(result)
        return result;
    }

    /* NOTE: this function should set 'done' TRUE, as the other auth
       functions work that way */
    authstatus->done = TRUE;
  }
  if(authstatus->picked == CURLAUTH_BEARER) {
    /* Bearer */
    if((!proxy && conn->oauth_bearer &&
        !FUNC1(conn, "Authorization:"))) {
      auth = "Bearer";
      result = FUNC7(conn);
      if(result)
        return result;
    }

    /* NOTE: this function should set 'done' TRUE, as the other auth
       functions work that way */
    authstatus->done = TRUE;
  }

  if(auth) {
    FUNC8(data, "%s auth using %s with user '%s'\n",
          proxy ? "Proxy" : "Server", auth,
          proxy ? (conn->http_proxy.user ? conn->http_proxy.user : "") :
                  (conn->user ? conn->user : ""));
    authstatus->multipass = (!authstatus->done) ? TRUE : FALSE;
  }
  else
    authstatus->multipass = FALSE;

  return CURLE_OK;
}