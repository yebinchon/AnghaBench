
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {scalar_t__* tempsock; scalar_t__ transport; } ;
typedef scalar_t__ curl_socket_t ;


 scalar_t__ CONNECT_FIRSTSOCKET_PROXY_SSL () ;
 scalar_t__ CURL_SOCKET_BAD ;
 int Curl_ssl_getsock (struct connectdata*,scalar_t__*) ;
 int GETSOCK_READSOCK (int) ;
 int GETSOCK_WRITESOCK (int) ;
 scalar_t__ TRNSPRT_QUIC ;

__attribute__((used)) static int waitconnect_getsock(struct connectdata *conn,
                               curl_socket_t *sock)
{
  int i;
  int s = 0;
  int rc = 0;






  for(i = 0; i<2; i++) {
    if(conn->tempsock[i] != CURL_SOCKET_BAD) {
      sock[s] = conn->tempsock[i];
      rc |= GETSOCK_WRITESOCK(s);





      s++;
    }
  }

  return rc;
}
