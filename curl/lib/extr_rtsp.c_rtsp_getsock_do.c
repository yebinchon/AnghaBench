
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int * sock; } ;
typedef int curl_socket_t ;


 size_t FIRSTSOCKET ;
 int GETSOCK_WRITESOCK (int ) ;

__attribute__((used)) static int rtsp_getsock_do(struct connectdata *conn,
                           curl_socket_t *socks)
{

  socks[0] = conn->sock[FIRSTSOCKET];
  return GETSOCK_WRITESOCK(0);
}
