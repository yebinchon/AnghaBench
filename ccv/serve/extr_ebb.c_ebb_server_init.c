
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ev_loop {int dummy; } ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {char* port; int fd; int * data; int * new_connection; scalar_t__ secure; TYPE_2__ connection_watcher; scalar_t__ listening; struct ev_loop* loop; } ;
typedef TYPE_1__ ebb_server ;


 int ev_init (TYPE_2__*,int ) ;
 int on_connection ;

void
ebb_server_init(ebb_server *server, struct ev_loop *loop)
{
  server->loop = loop;
  server->listening = 0;
  server->port[0] = '\0';
  server->fd = -1;
  server->connection_watcher.data = server;
  ev_init (&server->connection_watcher, on_connection);
  server->secure = 0;

  server->new_connection = ((void*)0);
  server->data = ((void*)0);
}
