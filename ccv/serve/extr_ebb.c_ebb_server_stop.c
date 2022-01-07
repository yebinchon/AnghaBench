
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* port; scalar_t__ listening; int fd; int connection_watcher; int loop; } ;
typedef TYPE_1__ ebb_server ;


 int close (int ) ;
 int ev_io_stop (int ,int *) ;

void
ebb_server_stop(ebb_server *server)
{
  if(server->listening) {
    ev_io_stop(server->loop, &server->connection_watcher);
    close(server->fd);
    server->port[0] = '\0';
    server->listening = 0;
  }
}
