
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int rawalloc; } ;
struct TYPE_7__ {TYPE_4__ host; int passwd; int user; } ;
struct TYPE_6__ {TYPE_4__ host; int passwd; int user; } ;
struct TYPE_5__ {int rtsp_transport; int cookiehost; int host; int ref; int rangeline; int te; int accept_encoding; int userpwd; int uagent; int proxyuserpwd; } ;
struct connectdata {int ssl_extra; int unix_domain_socket; int proxy_ssl_config; int ssl_config; int localdev; int easyq; int connect_state; TYPE_3__ socks_proxy; TYPE_2__ http_proxy; int secondaryhostname; int hostname_resolve; TYPE_4__ conn_to_host; TYPE_4__ host; int trailer; TYPE_1__ allocptr; int options; int sasl_authzid; int oauth_bearer; int passwd; int user; } ;


 int Curl_free_primary_ssl_config (int *) ;
 int Curl_llist_destroy (int *,int *) ;
 int Curl_safefree (int ) ;
 int conn_reset_all_postponed_data (struct connectdata*) ;
 int free (struct connectdata*) ;
 int free_idnconverted_hostname (TYPE_4__*) ;

__attribute__((used)) static void conn_free(struct connectdata *conn)
{
  if(!conn)
    return;

  free_idnconverted_hostname(&conn->host);
  free_idnconverted_hostname(&conn->conn_to_host);
  free_idnconverted_hostname(&conn->http_proxy.host);
  free_idnconverted_hostname(&conn->socks_proxy.host);

  Curl_safefree(conn->user);
  Curl_safefree(conn->passwd);
  Curl_safefree(conn->oauth_bearer);
  Curl_safefree(conn->sasl_authzid);
  Curl_safefree(conn->options);
  Curl_safefree(conn->http_proxy.user);
  Curl_safefree(conn->socks_proxy.user);
  Curl_safefree(conn->http_proxy.passwd);
  Curl_safefree(conn->socks_proxy.passwd);
  Curl_safefree(conn->allocptr.proxyuserpwd);
  Curl_safefree(conn->allocptr.uagent);
  Curl_safefree(conn->allocptr.userpwd);
  Curl_safefree(conn->allocptr.accept_encoding);
  Curl_safefree(conn->allocptr.te);
  Curl_safefree(conn->allocptr.rangeline);
  Curl_safefree(conn->allocptr.ref);
  Curl_safefree(conn->allocptr.host);
  Curl_safefree(conn->allocptr.cookiehost);
  Curl_safefree(conn->allocptr.rtsp_transport);
  Curl_safefree(conn->trailer);
  Curl_safefree(conn->host.rawalloc);
  Curl_safefree(conn->conn_to_host.rawalloc);
  Curl_safefree(conn->hostname_resolve);
  Curl_safefree(conn->secondaryhostname);
  Curl_safefree(conn->http_proxy.host.rawalloc);
  Curl_safefree(conn->socks_proxy.host.rawalloc);
  Curl_safefree(conn->connect_state);

  conn_reset_all_postponed_data(conn);
  Curl_llist_destroy(&conn->easyq, ((void*)0));
  Curl_safefree(conn->localdev);
  Curl_free_primary_ssl_config(&conn->ssl_config);
  Curl_free_primary_ssl_config(&conn->proxy_ssl_config);
  free(conn);
}
