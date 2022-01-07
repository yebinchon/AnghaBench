
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timediff_t ;
struct connectdata {int data; } ;
typedef scalar_t__ ssize_t ;
typedef int curl_socket_t ;


 int CURLE_AGAIN ;
 int CURLE_OK ;
 int CURLE_OPERATION_TIMEDOUT ;
 int Curl_read_plain (int ,char*,scalar_t__,scalar_t__*) ;
 scalar_t__ Curl_timeleft (int ,int *,int ) ;
 scalar_t__ SOCKET_READABLE (int ,scalar_t__) ;
 int TRUE ;

int Curl_blockread_all(struct connectdata *conn,
                       curl_socket_t sockfd,
                       char *buf,
                       ssize_t buffersize,
                       ssize_t *n)
{
  ssize_t nread = 0;
  ssize_t allread = 0;
  int result;
  *n = 0;
  for(;;) {
    timediff_t timeleft = Curl_timeleft(conn->data, ((void*)0), TRUE);
    if(timeleft < 0) {

      result = CURLE_OPERATION_TIMEDOUT;
      break;
    }
    if(SOCKET_READABLE(sockfd, timeleft) <= 0) {
      result = ~CURLE_OK;
      break;
    }
    result = Curl_read_plain(sockfd, buf, buffersize, &nread);
    if(CURLE_AGAIN == result)
      continue;
    if(result)
      break;

    if(buffersize == nread) {
      allread += nread;
      *n = allread;
      result = CURLE_OK;
      break;
    }
    if(!nread) {
      result = ~CURLE_OK;
      break;
    }

    buffersize -= nread;
    buf += nread;
    allread += nread;
  }
  return result;
}
