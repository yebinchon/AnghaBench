
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
typedef int ebb_server ;
struct TYPE_5__ {scalar_t__ request; } ;
typedef TYPE_1__ ebb_connection_extras ;
struct TYPE_6__ {int on_close; int new_request; TYPE_1__* data; } ;
typedef TYPE_2__ ebb_connection ;


 int ebb_connection_init (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int new_request ;
 int on_connection_close ;

__attribute__((used)) static ebb_connection* new_connection(ebb_server* server, struct sockaddr_in* addr)
{
 ebb_connection* connection = (ebb_connection*)malloc(sizeof(ebb_connection) + sizeof(ebb_connection_extras));
 ebb_connection_init(connection);
 ebb_connection_extras* connection_extras = (ebb_connection_extras*)(connection + 1);
 connection_extras->request = 0;
 connection->data = connection_extras;
 connection->new_request = new_request;
 connection->on_close = on_connection_close;
 return connection;
}
