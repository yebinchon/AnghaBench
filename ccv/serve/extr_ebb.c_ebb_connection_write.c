
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char const* to_write; size_t to_write_len; int write_watcher; TYPE_1__* server; int after_write_cb; scalar_t__ written; } ;
typedef TYPE_2__ ebb_connection ;
typedef int ebb_after_write_cb ;
struct TYPE_4__ {int loop; } ;


 int CONNECTION_HAS_SOMETHING_TO_WRITE ;
 int assert (int) ;
 int ev_io_start (int ,int *) ;
 scalar_t__ ev_is_active (int *) ;

int
ebb_connection_write(ebb_connection *connection, const char *buf, size_t len, ebb_after_write_cb cb)
{
  if(ev_is_active(&connection->write_watcher))
    return 0;
  assert(!CONNECTION_HAS_SOMETHING_TO_WRITE);
  connection->to_write = buf;
  connection->to_write_len = len;
  connection->written = 0;
  connection->after_write_cb = cb;
  ev_io_start(connection->server->loop, &connection->write_watcher);
  return 1;
}
