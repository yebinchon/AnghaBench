
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int proxy_user_passwd; int proxy; void* tunnel_proxy; void* socksproxy; void* httpproxy; } ;
struct TYPE_12__ {scalar_t__ rawalloc; } ;
struct TYPE_14__ {char* passwd; int * user; TYPE_4__ host; int proxytype; } ;
struct TYPE_11__ {scalar_t__ rawalloc; } ;
struct TYPE_13__ {char* passwd; int * user; TYPE_3__ host; int proxytype; } ;
struct TYPE_9__ {int name; } ;
struct connectdata {TYPE_7__ bits; TYPE_6__ http_proxy; TYPE_5__ socks_proxy; TYPE_8__* handler; scalar_t__ unix_domain_socket; TYPE_1__ host; struct Curl_easy* data; } ;
struct TYPE_10__ {char** str; } ;
struct Curl_easy {TYPE_2__ set; } ;
struct TYPE_16__ {int flags; int protocol; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURLE_UNSUPPORTED_PROTOCOL ;
 TYPE_8__ Curl_handler_http ;
 int Curl_safefree (char*) ;
 void* FALSE ;
 int PROTOPT_NONETWORK ;
 int PROTOPT_PROXY_AS_HTTP ;
 int PROTO_FAMILY_HTTP ;
 size_t STRING_NOPROXY ;
 size_t STRING_PRE_PROXY ;
 size_t STRING_PROXY ;
 void* TRUE ;
 scalar_t__ check_noproxy (int ,char*) ;
 char* curl_getenv (char const*) ;
 char* detect_proxy (struct connectdata*) ;
 int failf (struct Curl_easy*,char*) ;
 int free (char*) ;
 int infof (struct Curl_easy*,char*,char const*,char*) ;
 scalar_t__ parse_proxy (struct Curl_easy*,struct connectdata*,char*,int ) ;
 scalar_t__ parse_proxy_auth (struct Curl_easy*,struct connectdata*) ;
 char* strdup (char*) ;

__attribute__((used)) static CURLcode create_conn_helper_init_proxy(struct connectdata *conn)
{
  char *proxy = ((void*)0);
  char *socksproxy = ((void*)0);
  char *no_proxy = ((void*)0);
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;




  if(conn->bits.proxy_user_passwd) {
    result = parse_proxy_auth(data, conn);
    if(result)
      goto out;
  }




  if(data->set.str[STRING_PROXY]) {
    proxy = strdup(data->set.str[STRING_PROXY]);

    if(((void*)0) == proxy) {
      failf(data, "memory shortage");
      result = CURLE_OUT_OF_MEMORY;
      goto out;
    }
  }

  if(data->set.str[STRING_PRE_PROXY]) {
    socksproxy = strdup(data->set.str[STRING_PRE_PROXY]);

    if(((void*)0) == socksproxy) {
      failf(data, "memory shortage");
      result = CURLE_OUT_OF_MEMORY;
      goto out;
    }
  }

  if(!data->set.str[STRING_NOPROXY]) {
    const char *p = "no_proxy";
    no_proxy = curl_getenv(p);
    if(!no_proxy) {
      p = "NO_PROXY";
      no_proxy = curl_getenv(p);
    }
    if(no_proxy) {
      infof(conn->data, "Uses proxy env variable %s == '%s'\n", p, no_proxy);
    }
  }

  if(check_noproxy(conn->host.name, data->set.str[STRING_NOPROXY] ?
      data->set.str[STRING_NOPROXY] : no_proxy)) {
    Curl_safefree(proxy);
    Curl_safefree(socksproxy);
  }

  else if(!proxy && !socksproxy)

    proxy = detect_proxy(conn);


  Curl_safefree(no_proxy);
  if(proxy && (!*proxy || (conn->handler->flags & PROTOPT_NONETWORK))) {
    free(proxy);

    proxy = ((void*)0);
  }
  if(socksproxy && (!*socksproxy ||
                    (conn->handler->flags & PROTOPT_NONETWORK))) {
    free(socksproxy);

    socksproxy = ((void*)0);
  }






  if(proxy || socksproxy) {
    if(proxy) {
      result = parse_proxy(data, conn, proxy, conn->http_proxy.proxytype);
      Curl_safefree(proxy);
      if(result)
        goto out;
    }

    if(socksproxy) {
      result = parse_proxy(data, conn, socksproxy,
                           conn->socks_proxy.proxytype);

      Curl_safefree(socksproxy);
      if(result)
        goto out;
    }

    if(conn->http_proxy.host.rawalloc) {






      if(!(conn->handler->protocol & PROTO_FAMILY_HTTP)) {
        if((conn->handler->flags & PROTOPT_PROXY_AS_HTTP) &&
           !conn->bits.tunnel_proxy)
          conn->handler = &Curl_handler_http;
        else

          conn->bits.tunnel_proxy = TRUE;
      }
      conn->bits.httpproxy = TRUE;

    }
    else {
      conn->bits.httpproxy = FALSE;
      conn->bits.tunnel_proxy = FALSE;
    }

    if(conn->socks_proxy.host.rawalloc) {
      if(!conn->http_proxy.host.rawalloc) {

        if(!conn->socks_proxy.user) {
          conn->socks_proxy.user = conn->http_proxy.user;
          conn->http_proxy.user = ((void*)0);
          Curl_safefree(conn->socks_proxy.passwd);
          conn->socks_proxy.passwd = conn->http_proxy.passwd;
          conn->http_proxy.passwd = ((void*)0);
        }
      }
      conn->bits.socksproxy = TRUE;
    }
    else
      conn->bits.socksproxy = FALSE;
  }
  else {
    conn->bits.socksproxy = FALSE;
    conn->bits.httpproxy = FALSE;
  }
  conn->bits.proxy = conn->bits.httpproxy || conn->bits.socksproxy;

  if(!conn->bits.proxy) {

    conn->bits.proxy = FALSE;
    conn->bits.httpproxy = FALSE;
    conn->bits.socksproxy = FALSE;
    conn->bits.proxy_user_passwd = FALSE;
    conn->bits.tunnel_proxy = FALSE;
  }

out:

  free(socksproxy);
  free(proxy);
  return result;
}
