
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_8__ {TYPE_1__* data; } ;
struct TYPE_9__ {int new_request; TYPE_1__* data; } ;
struct TYPE_6__ {int fd; int * data; int * on_close; int * on_timeout; int * new_request; int * new_buf; TYPE_2__ timeout_watcher; TYPE_2__ goodbye_watcher; TYPE_3__ read_watcher; int * to_write; TYPE_3__ write_watcher; TYPE_4__ parser; scalar_t__ open; int * ip; int * server; } ;
typedef TYPE_1__ ebb_connection ;


 int EBB_DEFAULT_TIMEOUT ;
 int ebb_request_parser_init (TYPE_4__*) ;
 int ev_init (TYPE_3__*,int ) ;
 int ev_timer_init (TYPE_2__*,int ,int,int) ;
 int new_request_wrapper ;
 int on_goodbye ;
 int on_readable ;
 int on_timeout ;
 int on_writable ;

void
ebb_connection_init(ebb_connection *connection)
{
  connection->fd = -1;
  connection->server = ((void*)0);
  connection->ip = ((void*)0);
  connection->open = 0;

  ebb_request_parser_init( &connection->parser );
  connection->parser.data = connection;
  connection->parser.new_request = new_request_wrapper;

  ev_init (&connection->write_watcher, on_writable);
  connection->write_watcher.data = connection;
  connection->to_write = ((void*)0);

  ev_init(&connection->read_watcher, on_readable);
  connection->read_watcher.data = connection;

  ev_timer_init(&connection->goodbye_watcher, on_goodbye, 0., 0.);
  connection->goodbye_watcher.data = connection;

  ev_timer_init(&connection->timeout_watcher, on_timeout, EBB_DEFAULT_TIMEOUT, 0.);
  connection->timeout_watcher.data = connection;

  connection->new_buf = ((void*)0);
  connection->new_request = ((void*)0);
  connection->on_timeout = ((void*)0);
  connection->on_close = ((void*)0);
  connection->data = ((void*)0);
}
