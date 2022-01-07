
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* on_close ) (TYPE_2__*) ;scalar_t__ open; int fd; int timeout_watcher; TYPE_1__* server; int write_watcher; int read_watcher; } ;
typedef TYPE_2__ ebb_connection ;
struct TYPE_5__ {int loop; } ;


 scalar_t__ close (int ) ;
 int error (char*) ;
 int ev_io_stop (int ,int *) ;
 int ev_timer_stop (int ,int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
close_connection(ebb_connection *connection)
{
  ev_io_stop(connection->server->loop, &connection->read_watcher);
  ev_io_stop(connection->server->loop, &connection->write_watcher);
  ev_timer_stop(connection->server->loop, &connection->timeout_watcher);

  if(0 > close(connection->fd))
    error("problem closing connection fd");

  connection->open = 0;

  if(connection->on_close)
    connection->on_close(connection);



}
