
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {scalar_t__ fd; int revents; int events; } ;
struct curltime {int member_1; int member_0; } ;
struct TYPE_8__ {scalar_t__ fd_count; } ;
typedef TYPE_1__ fd_set ;
typedef scalar_t__ curl_socket_t ;


 scalar_t__ CURL_SOCKET_BAD ;
 struct curltime Curl_now () ;
 int Curl_wait_ms (int) ;
 int ELAPSED_MS () ;
 scalar_t__ ERROR_NOT_EINTR (int) ;
 int FALSE ;
 scalar_t__ FD_ISSET (scalar_t__,TYPE_1__*) ;
 int FD_SET (scalar_t__,TYPE_1__*) ;
 int FD_ZERO (TYPE_1__*) ;
 int POLLERR ;
 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int POLLRDBAND ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int SOCKERRNO ;
 int TRUE ;
 int VERIFY_SOCK (scalar_t__) ;
 int poll (struct pollfd*,unsigned int,int) ;
 int select (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,struct timeval*) ;

int Curl_poll(struct pollfd ufds[], unsigned int nfds, int timeout_ms)
{

  struct timeval pending_tv;
  struct timeval *ptimeout;
  fd_set fds_read;
  fd_set fds_write;
  fd_set fds_err;
  curl_socket_t maxfd;

  struct curltime initial_tv = {0, 0};
  bool fds_none = TRUE;
  unsigned int i;
  int pending_ms = 0;
  int r;

  if(ufds) {
    for(i = 0; i < nfds; i++) {
      if(ufds[i].fd != CURL_SOCKET_BAD) {
        fds_none = FALSE;
        break;
      }
    }
  }
  if(fds_none) {
    r = Curl_wait_ms(timeout_ms);
    return r;
  }






  if(timeout_ms > 0) {
    pending_ms = timeout_ms;
    initial_tv = Curl_now();
  }
  FD_ZERO(&fds_read);
  FD_ZERO(&fds_write);
  FD_ZERO(&fds_err);
  maxfd = (curl_socket_t)-1;

  for(i = 0; i < nfds; i++) {
    ufds[i].revents = 0;
    if(ufds[i].fd == CURL_SOCKET_BAD)
      continue;
    VERIFY_SOCK(ufds[i].fd);
    if(ufds[i].events & (POLLIN|POLLOUT|POLLPRI|
                          POLLRDNORM|POLLWRNORM|POLLRDBAND)) {
      if(ufds[i].fd > maxfd)
        maxfd = ufds[i].fd;
      if(ufds[i].events & (POLLRDNORM|POLLIN))
        FD_SET(ufds[i].fd, &fds_read);
      if(ufds[i].events & (POLLWRNORM|POLLOUT))
        FD_SET(ufds[i].fd, &fds_write);
      if(ufds[i].events & (POLLRDBAND|POLLPRI))
        FD_SET(ufds[i].fd, &fds_err);
    }
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
      pending_ms = timeout_ms - ELAPSED_MS();
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

  r = 0;
  for(i = 0; i < nfds; i++) {
    ufds[i].revents = 0;
    if(ufds[i].fd == CURL_SOCKET_BAD)
      continue;
    if(FD_ISSET(ufds[i].fd, &fds_read))
      ufds[i].revents |= POLLIN;
    if(FD_ISSET(ufds[i].fd, &fds_write))
      ufds[i].revents |= POLLOUT;
    if(FD_ISSET(ufds[i].fd, &fds_err))
      ufds[i].revents |= POLLPRI;
    if(ufds[i].revents != 0)
      r++;
  }



  return r;
}
