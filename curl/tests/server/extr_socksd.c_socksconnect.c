
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int s_addr; } ;
struct TYPE_5__ {TYPE_3__ sin_addr; int sin_port; int sin_family; } ;
struct TYPE_4__ {int sa; TYPE_2__ sa4; } ;
typedef TYPE_1__ srvr_sockaddr_union_t ;
typedef scalar_t__ curl_socket_t ;


 int AF_INET ;
 scalar_t__ CURL_SOCKET_BAD ;
 int Curl_inet_pton (int ,char const*,TYPE_3__*) ;
 int INADDR_ANY ;
 int SOCKERRNO ;
 int SOCK_STREAM ;
 int connect (scalar_t__,int *,int) ;
 int htons (unsigned short) ;
 int logmsg (char*,char const*,unsigned short,...) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ socket (int ,int ,int ) ;
 int strerror (int) ;

__attribute__((used)) static curl_socket_t socksconnect(unsigned short connectport,
                                  const char *connectaddr)
{
  int rc;
  srvr_sockaddr_union_t me;
  curl_socket_t sock = socket(AF_INET, SOCK_STREAM, 0);
  if(sock == CURL_SOCKET_BAD)
    return CURL_SOCKET_BAD;
  memset(&me.sa4, 0, sizeof(me.sa4));
  me.sa4.sin_family = AF_INET;
  me.sa4.sin_port = htons(connectport);
  me.sa4.sin_addr.s_addr = INADDR_ANY;
  Curl_inet_pton(AF_INET, connectaddr, &me.sa4.sin_addr);

  rc = connect(sock, &me.sa, sizeof(me.sa4));

  if(rc) {
    int error = SOCKERRNO;
    logmsg("Error connecting to %s:%hu: (%d) %s",
           connectaddr, connectport, error, strerror(error));
    return CURL_SOCKET_BAD;
  }
  logmsg("Connected fine to %s:%d", connectaddr, connectport);
  return sock;
}
