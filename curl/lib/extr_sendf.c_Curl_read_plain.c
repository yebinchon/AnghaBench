
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int curl_socket_t ;
typedef int CURLcode ;


 int CURLE_AGAIN ;
 int CURLE_OK ;
 int CURLE_RECV_ERROR ;
 int EAGAIN ;
 int EINTR ;
 int EWOULDBLOCK ;
 int SOCKERRNO ;
 int WSAEWOULDBLOCK ;
 int sread (int ,char*,size_t) ;

CURLcode Curl_read_plain(curl_socket_t sockfd,
                         char *buf,
                         size_t bytesfromsocket,
                         ssize_t *n)
{
  ssize_t nread = sread(sockfd, buf, bytesfromsocket);

  if(-1 == nread) {
    int err = SOCKERRNO;
    int return_error;



    return_error = EWOULDBLOCK == err || EAGAIN == err || EINTR == err;

    if(return_error)
      return CURLE_AGAIN;
    return CURLE_RECV_ERROR;
  }


  *n = nread;
  return CURLE_OK;
}
