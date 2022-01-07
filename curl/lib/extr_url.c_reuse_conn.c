
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * rawalloc; } ;
struct TYPE_7__ {int * passwd; int * user; TYPE_4__ host; } ;
struct TYPE_6__ {int * passwd; int * user; TYPE_4__ host; } ;
struct TYPE_5__ {int reuse; scalar_t__ proxy_user_passwd; scalar_t__ user_passwd; } ;
struct connectdata {int * unix_domain_socket; int easyq; int * localdev; TYPE_3__ socks_proxy; TYPE_2__ http_proxy; int * options; int * passwd; int * user; TYPE_1__ bits; int * hostname_resolve; int remote_port; int conn_to_port; TYPE_4__ conn_to_host; TYPE_4__ host; int data; int proxy_ssl_config; int ssl_config; } ;


 int Curl_free_primary_ssl_config (int *) ;
 int Curl_llist_destroy (int *,int *) ;
 int Curl_persistconninfo (struct connectdata*) ;
 int Curl_safefree (int *) ;
 int TRUE ;
 int conn_reset_all_postponed_data (struct connectdata*) ;
 int free (int *) ;
 int free_idnconverted_hostname (TYPE_4__*) ;

__attribute__((used)) static void reuse_conn(struct connectdata *old_conn,
                       struct connectdata *conn)
{
  free_idnconverted_hostname(&old_conn->http_proxy.host);
  free_idnconverted_hostname(&old_conn->socks_proxy.host);

  free(old_conn->http_proxy.host.rawalloc);
  free(old_conn->socks_proxy.host.rawalloc);



  Curl_free_primary_ssl_config(&old_conn->ssl_config);
  Curl_free_primary_ssl_config(&old_conn->proxy_ssl_config);

  conn->data = old_conn->data;



  conn->bits.user_passwd = old_conn->bits.user_passwd;
  if(conn->bits.user_passwd) {

    Curl_safefree(conn->user);
    Curl_safefree(conn->passwd);
    conn->user = old_conn->user;
    conn->passwd = old_conn->passwd;
    old_conn->user = ((void*)0);
    old_conn->passwd = ((void*)0);
  }

  conn->bits.proxy_user_passwd = old_conn->bits.proxy_user_passwd;
  if(conn->bits.proxy_user_passwd) {

    Curl_safefree(conn->http_proxy.user);
    Curl_safefree(conn->socks_proxy.user);
    Curl_safefree(conn->http_proxy.passwd);
    Curl_safefree(conn->socks_proxy.passwd);
    conn->http_proxy.user = old_conn->http_proxy.user;
    conn->socks_proxy.user = old_conn->socks_proxy.user;
    conn->http_proxy.passwd = old_conn->http_proxy.passwd;
    conn->socks_proxy.passwd = old_conn->socks_proxy.passwd;
    old_conn->http_proxy.user = ((void*)0);
    old_conn->socks_proxy.user = ((void*)0);
    old_conn->http_proxy.passwd = ((void*)0);
    old_conn->socks_proxy.passwd = ((void*)0);
  }



  free_idnconverted_hostname(&conn->host);
  free_idnconverted_hostname(&conn->conn_to_host);
  Curl_safefree(conn->host.rawalloc);
  Curl_safefree(conn->conn_to_host.rawalloc);
  conn->host = old_conn->host;
  conn->conn_to_host = old_conn->conn_to_host;
  conn->conn_to_port = old_conn->conn_to_port;
  conn->remote_port = old_conn->remote_port;
  Curl_safefree(conn->hostname_resolve);

  conn->hostname_resolve = old_conn->hostname_resolve;
  old_conn->hostname_resolve = ((void*)0);


  Curl_persistconninfo(conn);

  conn_reset_all_postponed_data(old_conn);


  conn->bits.reuse = TRUE;

  Curl_safefree(old_conn->user);
  Curl_safefree(old_conn->passwd);
  Curl_safefree(old_conn->options);
  Curl_safefree(old_conn->http_proxy.user);
  Curl_safefree(old_conn->socks_proxy.user);
  Curl_safefree(old_conn->http_proxy.passwd);
  Curl_safefree(old_conn->socks_proxy.passwd);
  Curl_safefree(old_conn->localdev);
  Curl_llist_destroy(&old_conn->easyq, ((void*)0));




}
