
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int timeout_watcher; TYPE_1__* server; } ;
typedef TYPE_2__ ebb_connection ;
struct TYPE_4__ {int loop; } ;


 int ev_timer_again (int ,int *) ;

void
ebb_connection_reset_timeout(ebb_connection *connection)
{
  ev_timer_again(connection->server->loop, &connection->timeout_watcher);
}
