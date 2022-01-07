
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pingpong {scalar_t__ sendleft; struct connectdata* conn; } ;
struct connectdata {int * sock; } ;
typedef int curl_socket_t ;


 size_t FIRSTSOCKET ;
 int GETSOCK_READSOCK (int ) ;
 int GETSOCK_WRITESOCK (int ) ;

int Curl_pp_getsock(struct pingpong *pp,
                    curl_socket_t *socks)
{
  struct connectdata *conn = pp->conn;
  socks[0] = conn->sock[FIRSTSOCKET];

  if(pp->sendleft) {

    return GETSOCK_WRITESOCK(0);
  }


  return GETSOCK_READSOCK(0);
}
