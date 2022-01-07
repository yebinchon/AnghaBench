
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {int * sock; TYPE_1__* handler; } ;
typedef int curl_socket_t ;
struct TYPE_2__ {int (* proto_getsock ) (struct connectdata*,int *) ;} ;


 size_t FIRSTSOCKET ;
 int GETSOCK_READSOCK (int ) ;
 int GETSOCK_WRITESOCK (int ) ;
 int stub1 (struct connectdata*,int *) ;

__attribute__((used)) static int protocol_getsock(struct connectdata *conn,
                            curl_socket_t *socks)
{
  if(conn->handler->proto_getsock)
    return conn->handler->proto_getsock(conn, socks);



  socks[0] = conn->sock[FIRSTSOCKET];
  return GETSOCK_READSOCK(0) | GETSOCK_WRITESOCK(0);
}
