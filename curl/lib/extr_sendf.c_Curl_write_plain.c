
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {scalar_t__* sock; } ;
typedef int ssize_t ;
typedef scalar_t__ curl_socket_t ;
typedef int CURLcode ;


 int Curl_send_plain (struct connectdata*,int,void const*,size_t,int *) ;
 size_t SECONDARYSOCKET ;

CURLcode Curl_write_plain(struct connectdata *conn,
                          curl_socket_t sockfd,
                          const void *mem,
                          size_t len,
                          ssize_t *written)
{
  ssize_t bytes_written;
  CURLcode result;
  int num = (sockfd == conn->sock[SECONDARYSOCKET]);

  bytes_written = Curl_send_plain(conn, num, mem, len, &result);

  *written = bytes_written;

  return result;
}
