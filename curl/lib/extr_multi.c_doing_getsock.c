
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {TYPE_1__* handler; } ;
typedef int curl_socket_t ;
struct TYPE_2__ {int (* doing_getsock ) (struct connectdata*,int *) ;} ;


 int GETSOCK_BLANK ;
 int stub1 (struct connectdata*,int *) ;

__attribute__((used)) static int doing_getsock(struct connectdata *conn,
                         curl_socket_t *socks)
{
  if(conn && conn->handler->doing_getsock)
    return conn->handler->doing_getsock(conn, socks);
  return GETSOCK_BLANK;
}
