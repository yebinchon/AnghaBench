#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {scalar_t__ fd; int revents; int events; } ;
struct curltime {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {scalar_t__ fd_count; } ;
typedef  TYPE_1__ fd_set ;
typedef  scalar_t__ curl_socket_t ;

/* Variables and functions */
 scalar_t__ CURL_SOCKET_BAD ; 
 struct curltime FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int FALSE ; 
 scalar_t__ FUNC4 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
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
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (struct pollfd*,unsigned int,int) ; 
 int FUNC9 (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,struct timeval*) ; 

int FUNC10(struct pollfd ufds[], unsigned int nfds, int timeout_ms)
{
#ifndef HAVE_POLL_FINE
  struct timeval pending_tv;
  struct timeval *ptimeout;
  fd_set fds_read;
  fd_set fds_write;
  fd_set fds_err;
  curl_socket_t maxfd;
#endif
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
    r = FUNC1(timeout_ms);
    return r;
  }

  /* Avoid initial timestamp, avoid Curl_now() call, when elapsed
     time in this function does not need to be measured. This happens
     when function is called with a zero timeout or a negative timeout
     value indicating a blocking call should be performed. */

  if(timeout_ms > 0) {
    pending_ms = timeout_ms;
    initial_tv = FUNC0();
  }

#ifdef HAVE_POLL_FINE

  do {
    int error;
    if(timeout_ms < 0)
      pending_ms = -1;
    else if(!timeout_ms)
      pending_ms = 0;
    r = poll(ufds, nfds, pending_ms);
    if(r != -1)
      break;
    error = SOCKERRNO;
    if(error && ERROR_NOT_EINTR(error))
      break;
    if(timeout_ms > 0) {
      pending_ms = (int)(timeout_ms - ELAPSED_MS());
      if(pending_ms <= 0) {
        r = 0;  /* Simulate a "call timed out" case */
        break;
      }
    }
  } while(r == -1);

  if(r < 0)
    return -1;
  if(r == 0)
    return 0;

  for(i = 0; i < nfds; i++) {
    if(ufds[i].fd == CURL_SOCKET_BAD)
      continue;
    if(ufds[i].revents & POLLHUP)
      ufds[i].revents |= POLLIN;
    if(ufds[i].revents & POLLERR)
      ufds[i].revents |= (POLLIN|POLLOUT);
  }

#else  /* HAVE_POLL_FINE */

  FUNC6(&fds_read);
  FUNC6(&fds_write);
  FUNC6(&fds_err);
  maxfd = (curl_socket_t)-1;

  for(i = 0; i < nfds; i++) {
    ufds[i].revents = 0;
    if(ufds[i].fd == CURL_SOCKET_BAD)
      continue;
    FUNC7(ufds[i].fd);
    if(ufds[i].events & (POLLIN|POLLOUT|POLLPRI|
                          POLLRDNORM|POLLWRNORM|POLLRDBAND)) {
      if(ufds[i].fd > maxfd)
        maxfd = ufds[i].fd;
      if(ufds[i].events & (POLLRDNORM|POLLIN))
        FUNC5(ufds[i].fd, &fds_read);
      if(ufds[i].events & (POLLWRNORM|POLLOUT))
        FUNC5(ufds[i].fd, &fds_write);
      if(ufds[i].events & (POLLRDBAND|POLLPRI))
        FUNC5(ufds[i].fd, &fds_err);
    }
  }

#ifdef USE_WINSOCK
  /* WinSock select() can't handle zero events.  See the comment about this in
     Curl_check_socket(). */
  if(fds_read.fd_count == 0 && fds_write.fd_count == 0
     && fds_err.fd_count == 0) {
    r = Curl_wait_ms(timeout_ms);
    return r;
  }
#endif

  ptimeout = (timeout_ms < 0) ? NULL : &pending_tv;

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

#ifdef USE_WINSOCK
    r = select((int)maxfd + 1,
               /* WinSock select() can't handle fd_sets with zero bits set, so
                  don't give it such arguments.  See the comment about this in
                  Curl_check_socket().
               */
               fds_read.fd_count ? &fds_read : NULL,
               fds_write.fd_count ? &fds_write : NULL,
               fds_err.fd_count ? &fds_err : NULL, ptimeout);
#else
    r = FUNC9((int)maxfd + 1, &fds_read, &fds_write, &fds_err, ptimeout);
#endif
    if(r != -1)
      break;
    error = SOCKERRNO;
    if(error && FUNC3(error))
      break;
    if(timeout_ms > 0) {
      pending_ms = timeout_ms - FUNC2();
      if(pending_ms <= 0) {
        r = 0;  /* Simulate a "call timed out" case */
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
    if(FUNC4(ufds[i].fd, &fds_read))
      ufds[i].revents |= POLLIN;
    if(FUNC4(ufds[i].fd, &fds_write))
      ufds[i].revents |= POLLOUT;
    if(FUNC4(ufds[i].fd, &fds_err))
      ufds[i].revents |= POLLPRI;
    if(ufds[i].revents != 0)
      r++;
  }

#endif  /* HAVE_POLL_FINE */

  return r;
}