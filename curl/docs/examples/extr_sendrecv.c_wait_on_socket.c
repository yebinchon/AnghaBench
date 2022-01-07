
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;
typedef int fd_set ;
typedef scalar_t__ curl_socket_t ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int wait_on_socket(curl_socket_t sockfd, int for_recv, long timeout_ms)
{
  struct timeval tv;
  fd_set infd, outfd, errfd;
  int res;

  tv.tv_sec = timeout_ms / 1000;
  tv.tv_usec = (timeout_ms % 1000) * 1000;

  FD_ZERO(&infd);
  FD_ZERO(&outfd);
  FD_ZERO(&errfd);

  FD_SET(sockfd, &errfd);

  if(for_recv) {
    FD_SET(sockfd, &infd);
  }
  else {
    FD_SET(sockfd, &outfd);
  }


  res = select((int)sockfd + 1, &infd, &outfd, &errfd, &tv);
  return res;
}
