#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  flag ;
typedef  scalar_t__ curl_socket_t ;

/* Variables and functions */
 scalar_t__ CURL_SOCKET_BAD ; 
 int EAGAIN ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 size_t MAX_SOCKETS ; 
 int /*<<< orphan*/  SERVERLOGS_LOCK ; 
 int SOCKERRNO ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__* all_sockets ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ got_exit_signal ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 size_t num_sockets ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ serverlogslocked ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static curl_socket_t FUNC8(curl_socket_t sock)
{
  curl_socket_t msgsock = CURL_SOCKET_BAD;
  int error;
  int flag = 1;

  if(MAX_SOCKETS == num_sockets) {
    FUNC2("Too many open sockets!");
    return CURL_SOCKET_BAD;
  }

  msgsock = FUNC0(sock, NULL, NULL);

  if(got_exit_signal) {
    if(CURL_SOCKET_BAD != msgsock)
      FUNC3(msgsock);
    return CURL_SOCKET_BAD;
  }

  if(CURL_SOCKET_BAD == msgsock) {
    error = SOCKERRNO;
    if(EAGAIN == error || EWOULDBLOCK == error) {
      /* nothing to accept */
      return 0;
    }
    FUNC2("MAJOR ERROR: accept() failed with error: (%d) %s",
           error, FUNC7(error));
    return CURL_SOCKET_BAD;
  }

  if(0 != FUNC1(msgsock, TRUE)) {
    error = SOCKERRNO;
    FUNC2("curlx_nonblock failed with error: (%d) %s",
           error, FUNC7(error));
    FUNC3(msgsock);
    return CURL_SOCKET_BAD;
  }

  if(0 != FUNC5(msgsock, SOL_SOCKET, SO_KEEPALIVE,
                     (void *)&flag, sizeof(flag))) {
    error = SOCKERRNO;
    FUNC2("setsockopt(SO_KEEPALIVE) failed with error: (%d) %s",
           error, FUNC7(error));
    FUNC3(msgsock);
    return CURL_SOCKET_BAD;
  }

  /*
  ** As soon as this server accepts a connection from the test harness it
  ** must set the server logs advisor read lock to indicate that server
  ** logs should not be read until this lock is removed by this server.
  */

  if(!serverlogslocked)
    FUNC4(SERVERLOGS_LOCK);
  serverlogslocked += 1;

  FUNC2("====> Client connect");

  all_sockets[num_sockets] = msgsock;
  num_sockets += 1;

#ifdef TCP_NODELAY
  if(socket_domain_is_ip()) {
    /*
     * Disable the Nagle algorithm to make it easier to send out a large
     * response in many small segments to torture the clients more.
     */
    if(0 != setsockopt(msgsock, IPPROTO_TCP, TCP_NODELAY,
                       (void *)&flag, sizeof(flag)))
      logmsg("====> TCP_NODELAY failed");
  }
#endif

  return msgsock;
}