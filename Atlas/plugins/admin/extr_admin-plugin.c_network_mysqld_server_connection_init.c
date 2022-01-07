
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int con_cleanup; int con_read_query; int con_read_auth; int con_init; } ;
struct TYPE_5__ {TYPE_1__ plugins; } ;
typedef TYPE_2__ network_mysqld_con ;


 int admin_disconnect_client ;
 int server_con_init ;
 int server_read_auth ;
 int server_read_query ;

__attribute__((used)) static int network_mysqld_server_connection_init(network_mysqld_con *con) {
 con->plugins.con_init = server_con_init;

 con->plugins.con_read_auth = server_read_auth;

 con->plugins.con_read_query = server_read_query;

 con->plugins.con_cleanup = admin_disconnect_client;

 return 0;
}
