
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {scalar_t__* sock; scalar_t__* tempsock; int data; int connection_id; } ;


 scalar_t__ CURL_SOCKET_BAD ;
 int Curl_closesocket (struct connectdata*,scalar_t__) ;
 int Curl_conncache_remove_conn (int ,struct connectdata*,int ) ;
 int Curl_resolver_cancel (struct connectdata*) ;
 int Curl_ssl_close (struct connectdata*,size_t) ;
 int DEBUGASSERT (int ) ;
 size_t FIRSTSOCKET ;
 size_t SECONDARYSOCKET ;
 int TRUE ;
 int infof (int ,char*,int ) ;

__attribute__((used)) static void conn_shutdown(struct connectdata *conn)
{
  if(!conn)
    return;

  infof(conn->data, "Closing connection %ld\n", conn->connection_id);
  DEBUGASSERT(conn->data);


  Curl_resolver_cancel(conn);



  Curl_ssl_close(conn, FIRSTSOCKET);
  Curl_ssl_close(conn, SECONDARYSOCKET);


  if(CURL_SOCKET_BAD != conn->sock[SECONDARYSOCKET])
    Curl_closesocket(conn, conn->sock[SECONDARYSOCKET]);
  if(CURL_SOCKET_BAD != conn->sock[FIRSTSOCKET])
    Curl_closesocket(conn, conn->sock[FIRSTSOCKET]);
  if(CURL_SOCKET_BAD != conn->tempsock[0])
    Curl_closesocket(conn, conn->tempsock[0]);
  if(CURL_SOCKET_BAD != conn->tempsock[1])
    Curl_closesocket(conn, conn->tempsock[1]);



  Curl_conncache_remove_conn(conn->data, conn, TRUE);
}
