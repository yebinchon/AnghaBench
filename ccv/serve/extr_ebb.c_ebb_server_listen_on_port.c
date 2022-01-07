
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct linger {int member_1; int member_0; } ;
typedef int ling ;
typedef int flags ;
struct TYPE_6__ {int port; } ;
typedef TYPE_2__ ebb_server ;
typedef int addr ;


 int AF_INET ;
 int INADDR_ANY ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int SO_LINGER ;
 int SO_REUSEADDR ;
 int TCP_NODELAY ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int ebb_server_listen_on_fd (TYPE_2__*,int) ;
 int htonl (int ) ;
 int htons (int const) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int perror (char*) ;
 int setsockopt (int,int ,int ,void*,int) ;
 int socket (int ,int ,int ) ;
 int sprintf (int ,char*,int const) ;

int
ebb_server_listen_on_port(ebb_server *server, const int port)
{
  int fd = -1;
  struct linger ling = {0, 0};
  struct sockaddr_in addr;
  int flags = 1;

  if ((fd = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
    perror("socket()");
    goto error;
  }

  flags = 1;
  setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, (void *)&flags, sizeof(flags));
  setsockopt(fd, SOL_SOCKET, SO_KEEPALIVE, (void *)&flags, sizeof(flags));
  setsockopt(fd, SOL_SOCKET, SO_LINGER, (void *)&ling, sizeof(ling));




  setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, (void *)&flags, sizeof(flags));




  memset(&addr, 0, sizeof(addr));

  addr.sin_family = AF_INET;
  addr.sin_port = htons(port);
  addr.sin_addr.s_addr = htonl(INADDR_ANY);

  if (bind(fd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
    perror("bind()");
    goto error;
  }

  int ret = ebb_server_listen_on_fd(server, fd);
  if (ret >= 0) {
    sprintf(server->port, "%d", port);
  }
  return ret;
error:
  if(fd > 0) close(fd);
  return -1;
}
