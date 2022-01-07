
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {scalar_t__ connect_state; int * sock; } ;
typedef int curl_socket_t ;


 size_t FIRSTSOCKET ;
 int GETSOCK_READSOCK (int ) ;
 int GETSOCK_WRITESOCK (int ) ;

__attribute__((used)) static int waitproxyconnect_getsock(struct connectdata *conn,
                                    curl_socket_t *sock)
{
  sock[0] = conn->sock[FIRSTSOCKET];



  if(conn->connect_state)
    return GETSOCK_READSOCK(0);

  return GETSOCK_WRITESOCK(0);
}
