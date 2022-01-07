
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int timediff_t ;
struct hostname {char const* dispname; int name; } ;
struct TYPE_6__ {struct hostname host; } ;
struct TYPE_5__ {struct hostname host; } ;
struct TYPE_4__ {scalar_t__ socksproxy; scalar_t__ conn_to_port; scalar_t__ conn_to_host; int proxy; scalar_t__ reuse; } ;
struct connectdata {char* unix_domain_socket; struct Curl_dns_entry* dns_entry; scalar_t__ port; void* hostname_resolve; TYPE_3__ http_proxy; TYPE_2__ socks_proxy; TYPE_1__ bits; scalar_t__ remote_port; scalar_t__ conn_to_port; struct hostname host; struct hostname conn_to_host; int abstract_unix_socket; } ;
struct Curl_easy {char* unix_domain_socket; struct Curl_dns_entry* dns_entry; scalar_t__ port; void* hostname_resolve; TYPE_3__ http_proxy; TYPE_2__ socks_proxy; TYPE_1__ bits; scalar_t__ remote_port; scalar_t__ conn_to_port; struct hostname host; struct hostname conn_to_host; int abstract_unix_socket; } ;
struct Curl_dns_entry {int inuse; int addr; } ;
typedef int CURLcode ;


 int CURLE_COULDNT_RESOLVE_HOST ;
 int CURLE_COULDNT_RESOLVE_PROXY ;
 int CURLE_OK ;
 int CURLE_OPERATION_TIMEDOUT ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLRESOLV_PENDING ;
 int CURLRESOLV_TIMEDOUT ;
 int Curl_resolv_timeout (struct connectdata*,void*,int,struct Curl_dns_entry**,int ) ;
 int Curl_timeleft (struct connectdata*,int *,int) ;
 int Curl_unix2addr (char const*,int*,int ) ;
 int DEBUGASSERT (struct connectdata*) ;
 int FALSE ;
 int TRUE ;
 struct Curl_dns_entry* calloc (int,int) ;
 int failf (struct connectdata*,char*,char const*) ;
 int free (struct Curl_dns_entry*) ;
 void* strdup (int ) ;

__attribute__((used)) static CURLcode resolve_server(struct Curl_easy *data,
                               struct connectdata *conn,
                               bool *async)
{
  CURLcode result = CURLE_OK;
  timediff_t timeout_ms = Curl_timeleft(data, ((void*)0), TRUE);

  DEBUGASSERT(conn);
  DEBUGASSERT(data);



  if(conn->bits.reuse)



    *async = FALSE;

  else {

    int rc;
    struct Curl_dns_entry *hostaddr;
    if(!conn->bits.proxy) {
      struct hostname *connhost;
      if(conn->bits.conn_to_host)
        connhost = &conn->conn_to_host;
      else
        connhost = &conn->host;



      if(conn->bits.conn_to_port)
        conn->port = conn->conn_to_port;
      else
        conn->port = conn->remote_port;


      conn->hostname_resolve = strdup(connhost->name);
      if(!conn->hostname_resolve)
        return CURLE_OUT_OF_MEMORY;
      rc = Curl_resolv_timeout(conn, conn->hostname_resolve, (int)conn->port,
                               &hostaddr, timeout_ms);
      if(rc == CURLRESOLV_PENDING)
        *async = TRUE;

      else if(rc == CURLRESOLV_TIMEDOUT)
        result = CURLE_OPERATION_TIMEDOUT;

      else if(!hostaddr) {
        failf(data, "Couldn't resolve host '%s'", connhost->dispname);
        result = CURLE_COULDNT_RESOLVE_HOST;

      }
    }
    else {


      struct hostname * const host = conn->bits.socksproxy ?
        &conn->socks_proxy.host : &conn->http_proxy.host;


      conn->hostname_resolve = strdup(host->name);
      if(!conn->hostname_resolve)
        return CURLE_OUT_OF_MEMORY;
      rc = Curl_resolv_timeout(conn, conn->hostname_resolve, (int)conn->port,
                               &hostaddr, timeout_ms);

      if(rc == CURLRESOLV_PENDING)
        *async = TRUE;

      else if(rc == CURLRESOLV_TIMEDOUT)
        result = CURLE_OPERATION_TIMEDOUT;

      else if(!hostaddr) {
        failf(data, "Couldn't resolve proxy '%s'", host->dispname);
        result = CURLE_COULDNT_RESOLVE_PROXY;

      }
    }
    DEBUGASSERT(conn->dns_entry == ((void*)0));
    conn->dns_entry = hostaddr;
  }

  return result;
}
