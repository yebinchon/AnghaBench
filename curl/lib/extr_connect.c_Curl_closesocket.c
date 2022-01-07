
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int (* fclosesocket ) (int ,scalar_t__) ;scalar_t__* sock; int data; int closesocket_client; scalar_t__* sock_accepted; } ;
typedef scalar_t__ curl_socket_t ;


 int Curl_multi_closed (int ,scalar_t__) ;
 int Curl_set_in_callback (int ,int) ;
 scalar_t__ FALSE ;
 size_t SECONDARYSOCKET ;
 int sclose (scalar_t__) ;
 int stub1 (int ,scalar_t__) ;

int Curl_closesocket(struct connectdata *conn,
                      curl_socket_t sock)
{
  if(conn && conn->fclosesocket) {
    if((sock == conn->sock[SECONDARYSOCKET]) &&
       conn->sock_accepted[SECONDARYSOCKET])



      conn->sock_accepted[SECONDARYSOCKET] = FALSE;
    else {
      int rc;
      Curl_multi_closed(conn->data, sock);
      Curl_set_in_callback(conn->data, 1);
      rc = conn->fclosesocket(conn->closesocket_client, sock);
      Curl_set_in_callback(conn->data, 0);
      return rc;
    }
  }

  if(conn)

    Curl_multi_closed(conn->data, sock);

  sclose(sock);

  return 0;
}
