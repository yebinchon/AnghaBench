
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int * sock; } ;


 int CURL_CSELECT_IN ;
 scalar_t__ Curl_recv_has_postponed_data (struct connectdata*,int) ;
 scalar_t__ Curl_ssl_data_pending (struct connectdata*,int) ;
 int SOCKET_READABLE (int ,int ) ;

bool Curl_conn_data_pending(struct connectdata *conn, int sockindex)
{
  int readable;

  if(Curl_ssl_data_pending(conn, sockindex) ||
     Curl_recv_has_postponed_data(conn, sockindex))
    return 1;

  readable = SOCKET_READABLE(conn->sock[sockindex], 0);
  return (readable > 0 && (readable & CURL_CSELECT_IN));
}
