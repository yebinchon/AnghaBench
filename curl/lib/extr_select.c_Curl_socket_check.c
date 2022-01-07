
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {int events; int revents; scalar_t__ fd; } ;
struct curltime {int member_1; int member_0; } ;
struct TYPE_8__ {scalar_t__ fd_count; } ;
typedef TYPE_1__ fd_set ;
typedef scalar_t__ curl_socket_t ;


 int CURL_CSELECT_ERR ;
 int CURL_CSELECT_IN ;
 int CURL_CSELECT_IN2 ;
 int CURL_CSELECT_OUT ;
 scalar_t__ CURL_SOCKET_BAD ;
 struct curltime Curl_now () ;
 int Curl_wait_ms (int) ;
 scalar_t__ ELAPSED_MS () ;
 scalar_t__ ERROR_NOT_EINTR (int) ;
 scalar_t__ FD_ISSET (scalar_t__,TYPE_1__*) ;
 int FD_SET (scalar_t__,TYPE_1__*) ;
 int FD_ZERO (TYPE_1__*) ;
 scalar_t__ INT_MAX ;
 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int POLLNVAL ;
 int POLLOUT ;
 int POLLPRI ;
 int POLLRDBAND ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int SOCKERRNO ;
 int VERIFY_SOCK (scalar_t__) ;
 int poll (struct pollfd*,int,int) ;
 int select (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,struct timeval*) ;

int Curl_socket_check(curl_socket_t readfd0,
                      curl_socket_t readfd1,
                      curl_socket_t writefd,
                      time_t timeout_ms)
{




  struct timeval pending_tv;
  struct timeval *ptimeout;
  fd_set fds_read;
  fd_set fds_write;
  fd_set fds_err;
  curl_socket_t maxfd;

  struct curltime initial_tv = {0, 0};
  int pending_ms = 0;
  int r;
  int ret;







  if((readfd0 == CURL_SOCKET_BAD) && (readfd1 == CURL_SOCKET_BAD) &&
     (writefd == CURL_SOCKET_BAD)) {

    r = Curl_wait_ms((int)timeout_ms);
    return r;
  }






  if(timeout_ms > 0) {
    pending_ms = (int)timeout_ms;
    initial_tv = Curl_now();
  }
  FD_ZERO(&fds_err);
  maxfd = (curl_socket_t)-1;

  FD_ZERO(&fds_read);
  if(readfd0 != CURL_SOCKET_BAD) {
    VERIFY_SOCK(readfd0);
    FD_SET(readfd0, &fds_read);
    FD_SET(readfd0, &fds_err);
    maxfd = readfd0;
  }
  if(readfd1 != CURL_SOCKET_BAD) {
    VERIFY_SOCK(readfd1);
    FD_SET(readfd1, &fds_read);
    FD_SET(readfd1, &fds_err);
    if(readfd1 > maxfd)
      maxfd = readfd1;
  }

  FD_ZERO(&fds_write);
  if(writefd != CURL_SOCKET_BAD) {
    VERIFY_SOCK(writefd);
    FD_SET(writefd, &fds_write);
    FD_SET(writefd, &fds_err);
    if(writefd > maxfd)
      maxfd = writefd;
  }

  ptimeout = (timeout_ms < 0) ? ((void*)0) : &pending_tv;

  do {
    int error;
    if(timeout_ms > 0) {
      pending_tv.tv_sec = pending_ms / 1000;
      pending_tv.tv_usec = (pending_ms % 1000) * 1000;
    }
    else if(!timeout_ms) {
      pending_tv.tv_sec = 0;
      pending_tv.tv_usec = 0;
    }
    r = select((int)maxfd + 1, &fds_read, &fds_write, &fds_err, ptimeout);


    if(r != -1)
      break;
    error = SOCKERRNO;
    if(error && ERROR_NOT_EINTR(error))
      break;
    if(timeout_ms > 0) {
      pending_ms = (int)(timeout_ms - ELAPSED_MS());
      if(pending_ms <= 0) {
        r = 0;
        break;
      }
    }
  } while(r == -1);

  if(r < 0)
    return -1;
  if(r == 0)
    return 0;

  ret = 0;
  if(readfd0 != CURL_SOCKET_BAD) {
    if(FD_ISSET(readfd0, &fds_read))
      ret |= CURL_CSELECT_IN;
    if(FD_ISSET(readfd0, &fds_err))
      ret |= CURL_CSELECT_ERR;
  }
  if(readfd1 != CURL_SOCKET_BAD) {
    if(FD_ISSET(readfd1, &fds_read))
      ret |= CURL_CSELECT_IN2;
    if(FD_ISSET(readfd1, &fds_err))
      ret |= CURL_CSELECT_ERR;
  }
  if(writefd != CURL_SOCKET_BAD) {
    if(FD_ISSET(writefd, &fds_write))
      ret |= CURL_CSELECT_OUT;
    if(FD_ISSET(writefd, &fds_err))
      ret |= CURL_CSELECT_ERR;
  }

  return ret;



}
