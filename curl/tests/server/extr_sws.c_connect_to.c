
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sin_family; int sin6_family; int sin6_addr; void* sin6_port; int sin_addr; void* sin_port; } ;
struct TYPE_3__ {int sa; TYPE_2__ sa6; TYPE_2__ sa4; } ;
typedef TYPE_1__ srvr_sockaddr_union_t ;
typedef int flag ;
typedef int curl_socklen_t ;
typedef scalar_t__ curl_socket_t ;





 scalar_t__ CURL_SOCKET_BAD ;
 int Curl_inet_pton (int const,char const*,int *) ;
 int IPPROTO_TCP ;
 int SOCKERRNO ;
 int SOCK_STREAM ;
 int TCP_NODELAY ;
 int connect (scalar_t__,int *,int) ;
 scalar_t__ got_exit_signal ;
 void* htons (unsigned short) ;
 int logmsg (char*,...) ;
 int memset (TYPE_2__*,int ,int) ;
 int sclose (scalar_t__) ;
 scalar_t__ setsockopt (scalar_t__,int ,int ,void*,int) ;
 scalar_t__ socket (int,int ,int ) ;
 int socket_domain ;
 scalar_t__ socket_domain_is_ip () ;
 int strerror (int) ;

__attribute__((used)) static curl_socket_t connect_to(const char *ipaddr, unsigned short port)
{
  srvr_sockaddr_union_t serveraddr;
  curl_socket_t serverfd;
  int error;
  int rc = 0;
  const char *op_br = "";
  const char *cl_br = "";
  if(!ipaddr)
    return CURL_SOCKET_BAD;

  logmsg("about to connect to %s%s%s:%hu",
         op_br, ipaddr, cl_br, port);


  serverfd = socket(socket_domain, SOCK_STREAM, 0);
  if(CURL_SOCKET_BAD == serverfd) {
    error = SOCKERRNO;
    logmsg("Error creating socket for server connection: (%d) %s",
           error, strerror(error));
    return CURL_SOCKET_BAD;
  }
  switch(socket_domain) {
  case 130:
    memset(&serveraddr.sa4, 0, sizeof(serveraddr.sa4));
    serveraddr.sa4.sin_family = 130;
    serveraddr.sa4.sin_port = htons(port);
    if(Curl_inet_pton(130, ipaddr, &serveraddr.sa4.sin_addr) < 1) {
      logmsg("Error inet_pton failed AF_INET conversion of '%s'", ipaddr);
      sclose(serverfd);
      return CURL_SOCKET_BAD;
    }

    rc = connect(serverfd, &serveraddr.sa, sizeof(serveraddr.sa4));
    break;
  }

  if(got_exit_signal) {
    sclose(serverfd);
    return CURL_SOCKET_BAD;
  }

  if(rc) {
    error = SOCKERRNO;
    logmsg("Error connecting to server port %hu: (%d) %s",
           port, error, strerror(error));
    sclose(serverfd);
    return CURL_SOCKET_BAD;
  }

  logmsg("connected fine to %s%s%s:%hu, now tunnel",
         op_br, ipaddr, cl_br, port);

  return serverfd;
}
