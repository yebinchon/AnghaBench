
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ connect_only; } ;
struct connectdata {TYPE_2__* handler; TYPE_1__ bits; struct Curl_easy* data; int * dns_entry; } ;
struct Curl_easy {int dummy; } ;
struct TYPE_4__ {int (* disconnect ) (struct connectdata*,int) ;} ;
typedef int CURLcode ;


 scalar_t__ CONN_INUSE (struct connectdata*) ;
 int CURLE_OK ;
 int Curl_hostcache_prune (struct Curl_easy*) ;
 int Curl_http_auth_cleanup_negotiate (struct connectdata*) ;
 int Curl_http_auth_cleanup_ntlm (struct connectdata*) ;
 int Curl_resolv_unlock (struct Curl_easy*,int *) ;
 int DEBUGF (int ) ;
 int TRUE ;
 int conn_free (struct connectdata*) ;
 int conn_shutdown (struct connectdata*) ;
 int infof (struct Curl_easy*,char*,...) ;
 int stub1 (struct connectdata*,int) ;

CURLcode Curl_disconnect(struct Curl_easy *data,
                         struct connectdata *conn, bool dead_connection)
{
  if(!conn)
    return CURLE_OK;

  if(!data) {
    DEBUGF(infof(data, "DISCONNECT without easy handle, ignoring\n"));
    return CURLE_OK;
  }





  if(CONN_INUSE(conn) && !dead_connection) {
    DEBUGF(infof(data, "Curl_disconnect when inuse: %zu\n", CONN_INUSE(conn)));
    return CURLE_OK;
  }

  if(conn->dns_entry != ((void*)0)) {
    Curl_resolv_unlock(data, conn->dns_entry);
    conn->dns_entry = ((void*)0);
  }

  Curl_hostcache_prune(data);
  conn->data = data;

  if(conn->bits.connect_only)

    dead_connection = TRUE;

  if(conn->handler->disconnect)

    conn->handler->disconnect(conn, dead_connection);

  conn_shutdown(conn);
  conn_free(conn);
  return CURLE_OK;
}
