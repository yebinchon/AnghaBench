#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int sin_family; int sin6_family; int /*<<< orphan*/  sin6_addr; void* sin6_port; int /*<<< orphan*/  sin_addr; void* sin_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  sa; TYPE_2__ sa6; TYPE_2__ sa4; } ;
typedef  TYPE_1__ srvr_sockaddr_union_t ;
typedef  int /*<<< orphan*/  flag ;
typedef  int curl_socklen_t ;
typedef  scalar_t__ curl_socket_t ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNIX 128 
 scalar_t__ CURL_SOCKET_BAD ; 
 int FUNC0 (int const,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int SOCKERRNO ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ got_exit_signal ; 
 void* FUNC2 (unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int socket_domain ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static curl_socket_t FUNC10(const char *ipaddr, unsigned short port)
{
  srvr_sockaddr_union_t serveraddr;
  curl_socket_t serverfd;
  int error;
  int rc = 0;
  const char *op_br = "";
  const char *cl_br = "";

#ifdef ENABLE_IPV6
  if(socket_domain == AF_INET6) {
    op_br = "[";
    cl_br = "]";
  }
#endif

  if(!ipaddr)
    return CURL_SOCKET_BAD;

  FUNC3("about to connect to %s%s%s:%hu",
         op_br, ipaddr, cl_br, port);


  serverfd = FUNC7(socket_domain, SOCK_STREAM, 0);
  if(CURL_SOCKET_BAD == serverfd) {
    error = SOCKERRNO;
    FUNC3("Error creating socket for server connection: (%d) %s",
           error, FUNC9(error));
    return CURL_SOCKET_BAD;
  }

#ifdef TCP_NODELAY
  if(socket_domain_is_ip()) {
    /* Disable the Nagle algorithm */
    curl_socklen_t flag = 1;
    if(0 != setsockopt(serverfd, IPPROTO_TCP, TCP_NODELAY,
                       (void *)&flag, sizeof(flag)))
      logmsg("====> TCP_NODELAY for server connection failed");
  }
#endif

  switch(socket_domain) {
  case AF_INET:
    FUNC4(&serveraddr.sa4, 0, sizeof(serveraddr.sa4));
    serveraddr.sa4.sin_family = AF_INET;
    serveraddr.sa4.sin_port = FUNC2(port);
    if(FUNC0(AF_INET, ipaddr, &serveraddr.sa4.sin_addr) < 1) {
      FUNC3("Error inet_pton failed AF_INET conversion of '%s'", ipaddr);
      FUNC5(serverfd);
      return CURL_SOCKET_BAD;
    }

    rc = FUNC1(serverfd, &serveraddr.sa, sizeof(serveraddr.sa4));
    break;
#ifdef ENABLE_IPV6
  case AF_INET6:
    memset(&serveraddr.sa6, 0, sizeof(serveraddr.sa6));
    serveraddr.sa6.sin6_family = AF_INET6;
    serveraddr.sa6.sin6_port = htons(port);
    if(Curl_inet_pton(AF_INET6, ipaddr, &serveraddr.sa6.sin6_addr) < 1) {
      logmsg("Error inet_pton failed AF_INET6 conversion of '%s'", ipaddr);
      sclose(serverfd);
      return CURL_SOCKET_BAD;
    }

    rc = connect(serverfd, &serveraddr.sa, sizeof(serveraddr.sa6));
    break;
#endif /* ENABLE_IPV6 */
#ifdef USE_UNIX_SOCKETS
  case AF_UNIX:
    logmsg("Proxying through Unix socket is not (yet?) supported.");
    return CURL_SOCKET_BAD;
#endif /* USE_UNIX_SOCKETS */
  }

  if(got_exit_signal) {
    FUNC5(serverfd);
    return CURL_SOCKET_BAD;
  }

  if(rc) {
    error = SOCKERRNO;
    FUNC3("Error connecting to server port %hu: (%d) %s",
           port, error, FUNC9(error));
    FUNC5(serverfd);
    return CURL_SOCKET_BAD;
  }

  FUNC3("connected fine to %s%s%s:%hu, now tunnel",
         op_br, ipaddr, cl_br, port);

  return serverfd;
}