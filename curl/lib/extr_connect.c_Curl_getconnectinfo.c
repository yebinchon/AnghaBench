
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct connfind {int found; struct connectdata* tofind; } ;
struct connectdata {int * sock; struct Curl_easy* data; } ;
struct TYPE_6__ {struct connectdata* lastconnect; } ;
struct Curl_easy {TYPE_3__ state; TYPE_2__* multi; TYPE_1__* multi_easy; } ;
typedef int curl_socket_t ;
struct TYPE_5__ {int conn_cache; } ;
struct TYPE_4__ {int conn_cache; } ;


 int CURL_SOCKET_BAD ;
 int Curl_conncache_foreach (struct Curl_easy*,int *,struct connfind*,int ) ;
 int DEBUGASSERT (struct Curl_easy*) ;
 int FALSE ;
 size_t FIRSTSOCKET ;
 int conn_is_conn ;

curl_socket_t Curl_getconnectinfo(struct Curl_easy *data,
                                  struct connectdata **connp)
{
  DEBUGASSERT(data);






  if(data->state.lastconnect && (data->multi_easy || data->multi)) {
    struct connectdata *c = data->state.lastconnect;
    struct connfind find;
    find.tofind = data->state.lastconnect;
    find.found = FALSE;

    Curl_conncache_foreach(data, data->multi_easy?
                           &data->multi_easy->conn_cache:
                           &data->multi->conn_cache, &find, conn_is_conn);

    if(!find.found) {
      data->state.lastconnect = ((void*)0);
      return CURL_SOCKET_BAD;
    }

    if(connp) {

      *connp = c;
      c->data = data;
    }
    return c->sock[FIRSTSOCKET];
  }
  else
    return CURL_SOCKET_BAD;
}
