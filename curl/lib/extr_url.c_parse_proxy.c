
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {char* rawalloc; char* name; } ;
struct proxy_info {char* user; char* passwd; long port; TYPE_3__ host; scalar_t__ proxytype; } ;
struct TYPE_5__ {int proxy_user_passwd; } ;
struct connectdata {long port; struct proxy_info socks_proxy; TYPE_1__ bits; struct proxy_info http_proxy; } ;
struct TYPE_6__ {long proxyport; } ;
struct Curl_easy {TYPE_2__ set; } ;
typedef scalar_t__ curl_proxytype ;
struct TYPE_8__ {int supports; } ;
typedef int CURLcode ;
typedef scalar_t__ CURLUcode ;
typedef int CURLU ;


 int CURLE_COULDNT_CONNECT ;
 int CURLE_COULDNT_RESOLVE_PROXY ;
 int CURLE_NOT_BUILT_IN ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURLPROXY_HTTPS ;
 scalar_t__ CURLPROXY_SOCKS4 ;
 scalar_t__ CURLPROXY_SOCKS4A ;
 scalar_t__ CURLPROXY_SOCKS5 ;
 scalar_t__ CURLPROXY_SOCKS5_HOSTNAME ;
 int CURLUPART_HOST ;
 int CURLUPART_PASSWORD ;
 int CURLUPART_PORT ;
 int CURLUPART_SCHEME ;
 int CURLUPART_URL ;
 int CURLUPART_USER ;
 int CURLU_GUESS_SCHEME ;
 int CURLU_NON_SUPPORT_SCHEME ;
 int CURLU_URLDECODE ;
 long CURL_DEFAULT_HTTPS_PROXY_PORT ;
 long CURL_DEFAULT_PROXY_PORT ;
 int Curl_safefree (char*) ;
 TYPE_4__* Curl_ssl ;
 int SSLSUPP_HTTPS_PROXY ;
 int TRUE ;
 int * curl_url () ;
 int curl_url_cleanup (int *) ;
 scalar_t__ curl_url_get (int *,int ,char**,int ) ;
 scalar_t__ curl_url_set (int *,int ,char*,int) ;
 int failf (struct Curl_easy*,char*,char*) ;
 int free (char*) ;
 scalar_t__ strcasecompare (char*,char*) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;
 long strtol (char*,int *,int) ;
 int zonefrom_url (int *,struct connectdata*) ;

__attribute__((used)) static CURLcode parse_proxy(struct Curl_easy *data,
                            struct connectdata *conn, char *proxy,
                            curl_proxytype proxytype)
{
  char *portptr = ((void*)0);
  long port = -1;
  char *proxyuser = ((void*)0);
  char *proxypasswd = ((void*)0);
  char *host;
  bool sockstype;
  CURLUcode uc;
  struct proxy_info *proxyinfo;
  CURLU *uhp = curl_url();
  CURLcode result = CURLE_OK;
  char *scheme = ((void*)0);



  uc = curl_url_set(uhp, CURLUPART_URL, proxy,
                    CURLU_NON_SUPPORT_SCHEME|CURLU_GUESS_SCHEME);
  if(!uc) {

    uc = curl_url_get(uhp, CURLUPART_SCHEME, &scheme, 0);
    if(uc) {
      result = CURLE_OUT_OF_MEMORY;
      goto error;
    }

    if(strcasecompare("https", scheme))
      proxytype = CURLPROXY_HTTPS;
    else if(strcasecompare("socks5h", scheme))
      proxytype = CURLPROXY_SOCKS5_HOSTNAME;
    else if(strcasecompare("socks5", scheme))
      proxytype = CURLPROXY_SOCKS5;
    else if(strcasecompare("socks4a", scheme))
      proxytype = CURLPROXY_SOCKS4A;
    else if(strcasecompare("socks4", scheme) ||
            strcasecompare("socks", scheme))
      proxytype = CURLPROXY_SOCKS4;
    else if(strcasecompare("http", scheme))
      ;
    else {

      failf(data, "Unsupported proxy scheme for \'%s\'", proxy);
      result = CURLE_COULDNT_CONNECT;
      goto error;
    }
  }
  else {
    failf(data, "Unsupported proxy syntax in \'%s\'", proxy);
    result = CURLE_COULDNT_RESOLVE_PROXY;
    goto error;
  }




    if(proxytype == CURLPROXY_HTTPS) {
      failf(data, "Unsupported proxy \'%s\', libcurl is built without the "
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


  curl_url_get(uhp, CURLUPART_USER, &proxyuser, CURLU_URLDECODE);
  curl_url_get(uhp, CURLUPART_PASSWORD, &proxypasswd, CURLU_URLDECODE);
  if(proxyuser || proxypasswd) {
    Curl_safefree(proxyinfo->user);
    proxyinfo->user = proxyuser;
    Curl_safefree(proxyinfo->passwd);
    if(!proxypasswd) {
      proxypasswd = strdup("");
      if(!proxypasswd) {
        result = CURLE_OUT_OF_MEMORY;
        goto error;
      }
    }
    proxyinfo->passwd = proxypasswd;
    conn->bits.proxy_user_passwd = TRUE;
  }

  curl_url_get(uhp, CURLUPART_PORT, &portptr, 0);

  if(portptr) {
    port = strtol(portptr, ((void*)0), 10);
    free(portptr);
  }
  else {
    if(data->set.proxyport)


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


  uc = curl_url_get(uhp, CURLUPART_HOST, &host, CURLU_URLDECODE);
  if(uc) {
    result = CURLE_OUT_OF_MEMORY;
    goto error;
  }
  Curl_safefree(proxyinfo->host.rawalloc);
  proxyinfo->host.rawalloc = host;
  if(host[0] == '[') {

    size_t len = strlen(host);
    host[len-1] = 0;
    host++;
    zonefrom_url(uhp, conn);
  }
  proxyinfo->host.name = host;

  error:
  free(scheme);
  curl_url_cleanup(uhp);
  return result;
}
