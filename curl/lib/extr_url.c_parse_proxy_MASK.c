#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* rawalloc; char* name; } ;
struct proxy_info {char* user; char* passwd; long port; TYPE_3__ host; scalar_t__ proxytype; } ;
struct TYPE_5__ {int /*<<< orphan*/  proxy_user_passwd; } ;
struct connectdata {long port; struct proxy_info socks_proxy; TYPE_1__ bits; struct proxy_info http_proxy; } ;
struct TYPE_6__ {long proxyport; } ;
struct Curl_easy {TYPE_2__ set; } ;
typedef  scalar_t__ curl_proxytype ;
struct TYPE_8__ {int supports; } ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  scalar_t__ CURLUcode ;
typedef  int /*<<< orphan*/  CURLU ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_COULDNT_CONNECT ; 
 int /*<<< orphan*/  CURLE_COULDNT_RESOLVE_PROXY ; 
 int /*<<< orphan*/  CURLE_NOT_BUILT_IN ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 scalar_t__ CURLPROXY_HTTPS ; 
 scalar_t__ CURLPROXY_SOCKS4 ; 
 scalar_t__ CURLPROXY_SOCKS4A ; 
 scalar_t__ CURLPROXY_SOCKS5 ; 
 scalar_t__ CURLPROXY_SOCKS5_HOSTNAME ; 
 int /*<<< orphan*/  CURLUPART_HOST ; 
 int /*<<< orphan*/  CURLUPART_PASSWORD ; 
 int /*<<< orphan*/  CURLUPART_PORT ; 
 int /*<<< orphan*/  CURLUPART_SCHEME ; 
 int /*<<< orphan*/  CURLUPART_URL ; 
 int /*<<< orphan*/  CURLUPART_USER ; 
 int CURLU_GUESS_SCHEME ; 
 int CURLU_NON_SUPPORT_SCHEME ; 
 int /*<<< orphan*/  CURLU_URLDECODE ; 
 long CURL_DEFAULT_HTTPS_PROXY_PORT ; 
 long CURL_DEFAULT_PROXY_PORT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__* Curl_ssl ; 
 int SSLSUPP_HTTPS_PROXY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct Curl_easy*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 char* FUNC8 (char*) ; 
 size_t FUNC9 (char*) ; 
 long FUNC10 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct connectdata*) ; 

__attribute__((used)) static CURLcode FUNC12(struct Curl_easy *data,
                            struct connectdata *conn, char *proxy,
                            curl_proxytype proxytype)
{
  char *portptr = NULL;
  long port = -1;
  char *proxyuser = NULL;
  char *proxypasswd = NULL;
  char *host;
  bool sockstype;
  CURLUcode uc;
  struct proxy_info *proxyinfo;
  CURLU *uhp = FUNC1();
  CURLcode result = CURLE_OK;
  char *scheme = NULL;

  /* When parsing the proxy, allowing non-supported schemes since we have
     these made up ones for proxies. Guess scheme for URLs without it. */
  uc = FUNC4(uhp, CURLUPART_URL, proxy,
                    CURLU_NON_SUPPORT_SCHEME|CURLU_GUESS_SCHEME);
  if(!uc) {
    /* parsed okay as a URL */
    uc = FUNC3(uhp, CURLUPART_SCHEME, &scheme, 0);
    if(uc) {
      result = CURLE_OUT_OF_MEMORY;
      goto error;
    }

    if(FUNC7("https", scheme))
      proxytype = CURLPROXY_HTTPS;
    else if(FUNC7("socks5h", scheme))
      proxytype = CURLPROXY_SOCKS5_HOSTNAME;
    else if(FUNC7("socks5", scheme))
      proxytype = CURLPROXY_SOCKS5;
    else if(FUNC7("socks4a", scheme))
      proxytype = CURLPROXY_SOCKS4A;
    else if(FUNC7("socks4", scheme) ||
            FUNC7("socks", scheme))
      proxytype = CURLPROXY_SOCKS4;
    else if(FUNC7("http", scheme))
      ; /* leave it as HTTP or HTTP/1.0 */
    else {
      /* Any other xxx:// reject! */
      FUNC5(data, "Unsupported proxy scheme for \'%s\'", proxy);
      result = CURLE_COULDNT_CONNECT;
      goto error;
    }
  }
  else {
    FUNC5(data, "Unsupported proxy syntax in \'%s\'", proxy);
    result = CURLE_COULDNT_RESOLVE_PROXY;
    goto error;
  }

#ifdef USE_SSL
  if(!(Curl_ssl->supports & SSLSUPP_HTTPS_PROXY))
#endif
    if(proxytype == CURLPROXY_HTTPS) {
      FUNC5(data, "Unsupported proxy \'%s\', libcurl is built without the "
                  "HTTPS-proxy support.", proxy);
      result = CURLE_NOT_BUILT_IN;
      goto error;
    }

  sockstype =
    proxytype == CURLPROXY_SOCKS5_HOSTNAME ||
    proxytype == CURLPROXY_SOCKS5 ||
    proxytype == CURLPROXY_SOCKS4A ||
    proxytype == CURLPROXY_SOCKS4;

  proxyinfo = sockstype ? &conn->socks_proxy : &conn->http_proxy;
  proxyinfo->proxytype = proxytype;

  /* Is there a username and password given in this proxy url? */
  FUNC3(uhp, CURLUPART_USER, &proxyuser, CURLU_URLDECODE);
  FUNC3(uhp, CURLUPART_PASSWORD, &proxypasswd, CURLU_URLDECODE);
  if(proxyuser || proxypasswd) {
    FUNC0(proxyinfo->user);
    proxyinfo->user = proxyuser;
    FUNC0(proxyinfo->passwd);
    if(!proxypasswd) {
      proxypasswd = FUNC8("");
      if(!proxypasswd) {
        result = CURLE_OUT_OF_MEMORY;
        goto error;
      }
    }
    proxyinfo->passwd = proxypasswd;
    conn->bits.proxy_user_passwd = TRUE; /* enable it */
  }

  FUNC3(uhp, CURLUPART_PORT, &portptr, 0);

  if(portptr) {
    port = FUNC10(portptr, NULL, 10);
    FUNC6(portptr);
  }
  else {
    if(data->set.proxyport)
      /* None given in the proxy string, then get the default one if it is
         given */
      port = data->set.proxyport;
    else {
      if(proxytype == CURLPROXY_HTTPS)
        port = CURL_DEFAULT_HTTPS_PROXY_PORT;
      else
        port = CURL_DEFAULT_PROXY_PORT;
    }
  }
  if(port >= 0) {
    proxyinfo->port = port;
    if(conn->port < 0 || sockstype || !conn->socks_proxy.host.rawalloc)
      conn->port = port;
  }

  /* now, clone the proxy host name */
  uc = FUNC3(uhp, CURLUPART_HOST, &host, CURLU_URLDECODE);
  if(uc) {
    result = CURLE_OUT_OF_MEMORY;
    goto error;
  }
  FUNC0(proxyinfo->host.rawalloc);
  proxyinfo->host.rawalloc = host;
  if(host[0] == '[') {
    /* this is a numerical IPv6, strip off the brackets */
    size_t len = FUNC9(host);
    host[len-1] = 0; /* clear the trailing bracket */
    host++;
    FUNC11(uhp, conn);
  }
  proxyinfo->host.name = host;

  error:
  FUNC6(scheme);
  FUNC2(uhp);
  return result;
}