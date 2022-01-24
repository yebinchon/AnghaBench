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
typedef  scalar_t__ time_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {int events; int revents; scalar_t__ fd; } ;
struct curltime {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {scalar_t__ fd_count; } ;
typedef  TYPE_1__ fd_set ;
typedef  scalar_t__ curl_socket_t ;

/* Variables and functions */
 int CURL_CSELECT_ERR ; 
 int CURL_CSELECT_IN ; 
 int CURL_CSELECT_IN2 ; 
 int CURL_CSELECT_OUT ; 
 scalar_t__ CURL_SOCKET_BAD ; 
 struct curltime FUNC0 () ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
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
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (struct pollfd*,int,int) ; 
 int FUNC9 (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,struct timeval*) ; 

int FUNC10(curl_socket_t readfd0, /* two sockets to read from */
                      curl_socket_t readfd1,
                      curl_socket_t writefd, /* socket to write to */
                      time_t timeout_ms)     /* milliseconds to wait */
{
#ifdef HAVE_POLL_FINE
  struct pollfd pfd[3];
  int num;
#else
  struct timeval pending_tv;
  struct timeval *ptimeout;
  fd_set fds_read;
  fd_set fds_write;
  fd_set fds_err;
  curl_socket_t maxfd;
#endif
  struct curltime initial_tv = {0, 0};
  int pending_ms = 0;
  int r;
  int ret;

#if SIZEOF_TIME_T != SIZEOF_INT
  /* wrap-around precaution */
  if(timeout_ms >= INT_MAX)
    timeout_ms = INT_MAX;
#endif

  if((readfd0 == CURL_SOCKET_BAD) && (readfd1 == CURL_SOCKET_BAD) &&
     (writefd == CURL_SOCKET_BAD)) {
    /* no sockets, just wait */
    r = FUNC1((int)timeout_ms);
    return r;
  }

  /* Avoid initial timestamp, avoid Curl_now() call, when elapsed
     time in this function does not need to be measured. This happens
     when function is called with a zero timeout or a negative timeout
     value indicating a blocking call should be performed. */

  if(timeout_ms > 0) {
    pending_ms = (int)timeout_ms;
    initial_tv = FUNC0();
  }

#ifdef HAVE_POLL_FINE

  num = 0;
  if(readfd0 != CURL_SOCKET_BAD) {
    pfd[num].fd = readfd0;
    pfd[num].events = POLLRDNORM|POLLIN|POLLRDBAND|POLLPRI;
    pfd[num].revents = 0;
    num++;
  }
  if(readfd1 != CURL_SOCKET_BAD) {
    pfd[num].fd = readfd1;
    pfd[num].events = POLLRDNORM|POLLIN|POLLRDBAND|POLLPRI;
    pfd[num].revents = 0;
    num++;
  }
  if(writefd != CURL_SOCKET_BAD) {
    pfd[num].fd = writefd;
    pfd[num].events = POLLWRNORM|POLLOUT;
    pfd[num].revents = 0;
    num++;
  }

  do {
    int error;
    if(timeout_ms < 0)
      pending_ms = -1;
    else if(!timeout_ms)
      pending_ms = 0;
    r = poll(pfd, num, pending_ms);
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

  ret = 0;
  num = 0;
  if(readfd0 != CURL_SOCKET_BAD) {
    if(pfd[num].revents & (POLLRDNORM|POLLIN|POLLERR|POLLHUP))
      ret |= CURL_CSELECT_IN;
    if(pfd[num].revents & (POLLRDBAND|POLLPRI|POLLNVAL))
      ret |= CURL_CSELECT_ERR;
    num++;
  }
  if(readfd1 != CURL_SOCKET_BAD) {
    if(pfd[num].revents & (POLLRDNORM|POLLIN|POLLERR|POLLHUP))
      ret |= CURL_CSELECT_IN2;
    if(pfd[num].revents & (POLLRDBAND|POLLPRI|POLLNVAL))
      ret |= CURL_CSELECT_ERR;
    num++;
  }
  if(writefd != CURL_SOCKET_BAD) {
    if(pfd[num].revents & (POLLWRNORM|POLLOUT))
      ret |= CURL_CSELECT_OUT;
    if(pfd[num].revents & (POLLERR|POLLHUP|POLLNVAL))
      ret |= CURL_CSELECT_ERR;
  }

  return ret;

#else  /* HAVE_POLL_FINE */

  FUNC6(&fds_err);
  maxfd = (curl_socket_t)-1;

  FUNC6(&fds_read);
  if(readfd0 != CURL_SOCKET_BAD) {
    FUNC7(readfd0);
    FUNC5(readfd0, &fds_read);
    FUNC5(readfd0, &fds_err);
    maxfd = readfd0;
  }
  if(readfd1 != CURL_SOCKET_BAD) {
    FUNC7(readfd1);
    FUNC5(readfd1, &fds_read);
    FUNC5(readfd1, &fds_err);
    if(readfd1 > maxfd)
      maxfd = readfd1;
  }

  FUNC6(&fds_write);
  if(writefd != CURL_SOCKET_BAD) {
    FUNC7(writefd);
    FUNC5(writefd, &fds_write);
    FUNC5(writefd, &fds_err);
    if(writefd > maxfd)
      maxfd = writefd;
  }

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

    /* WinSock select() must not be called with an fd_set that contains zero
       fd flags, or it will return WSAEINVAL.  But, it also can't be called
       with no fd_sets at all!  From the documentation:

         Any two of the parameters, readfds, writefds, or exceptfds, can be
         given as null. At least one must be non-null, and any non-null
         descriptor set must contain at least one handle to a socket.

       We know that we have at least one bit set in at least two fd_sets in
       this case, but we may have no bits set in either fds_read or fd_write,
       so check for that and handle it.  Luckily, with WinSock, we can _also_
       ask how many bits are set on an fd_set.

       It is unclear why WinSock doesn't just handle this for us instead of
       calling this an error.

       Note also that WinSock ignores the first argument, so we don't worry
       about the fact that maxfd is computed incorrectly with WinSock (since
       curl_socket_t is unsigned in such cases and thus -1 is the largest
       value).
    */
#ifdef USE_WINSOCK
    r = select((int)maxfd + 1,
               fds_read.fd_count ? &fds_read : NULL,
               fds_write.fd_count ? &fds_write : NULL,
               &fds_err, ptimeout);
#else
    r = FUNC9((int)maxfd + 1, &fds_read, &fds_write, &fds_err, ptimeout);
#endif

    if(r != -1)
      break;
    error = SOCKERRNO;
    if(error && FUNC3(error))
      break;
    if(timeout_ms > 0) {
      pending_ms = (int)(timeout_ms - FUNC2());
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

  ret = 0;
  if(readfd0 != CURL_SOCKET_BAD) {
    if(FUNC4(readfd0, &fds_read))
      ret |= CURL_CSELECT_IN;
    if(FUNC4(readfd0, &fds_err))
      ret |= CURL_CSELECT_ERR;
  }
  if(readfd1 != CURL_SOCKET_BAD) {
    if(FUNC4(readfd1, &fds_read))
      ret |= CURL_CSELECT_IN2;
    if(FUNC4(readfd1, &fds_err))
      ret |= CURL_CSELECT_ERR;
  }
  if(writefd != CURL_SOCKET_BAD) {
    if(FUNC4(writefd, &fds_write))
      ret |= CURL_CSELECT_OUT;
    if(FUNC4(writefd, &fds_err))
      ret |= CURL_CSELECT_ERR;
  }

  return ret;

#endif  /* HAVE_POLL_FINE */

}