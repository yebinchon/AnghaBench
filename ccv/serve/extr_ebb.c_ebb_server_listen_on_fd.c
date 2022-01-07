
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int listening; int fd; int connection_watcher; int loop; } ;
typedef TYPE_1__ ebb_server ;


 int EBB_MAX_CONNECTIONS ;
 int EV_READ ;
 int assert (int) ;
 int ev_io_set (int *,int,int ) ;
 int ev_io_start (int ,int *) ;
 scalar_t__ listen (int const,int ) ;
 int perror (char*) ;
 int set_nonblock (int const) ;

int
ebb_server_listen_on_fd(ebb_server *server, const int fd)
{
  assert(server->listening == 0);

  if (listen(fd, EBB_MAX_CONNECTIONS) < 0) {
    perror("listen()");
    return -1;
  }

  set_nonblock(fd);

  server->fd = fd;
  server->listening = 1;

  ev_io_set (&server->connection_watcher, server->fd, EV_READ);
  ev_io_start (server->loop, &server->connection_watcher);

  return server->fd;
}
