
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int con_cleanup; int con_send_local_infile_result; int con_read_local_infile_result; int con_read_local_infile_data; int con_send_query_result; int con_read_query_result; int con_read_query; int con_read_auth_result; int con_read_auth; int con_read_handshake; int con_connect_server; int con_init; } ;
struct TYPE_5__ {TYPE_1__ plugins; } ;
typedef TYPE_2__ network_mysqld_con ;


 int proxy_connect_server ;
 int proxy_disconnect_client ;
 int proxy_init ;
 int proxy_read_auth ;
 int proxy_read_auth_result ;
 int proxy_read_handshake ;
 int proxy_read_local_infile_data ;
 int proxy_read_local_infile_result ;
 int proxy_read_query ;
 int proxy_read_query_result ;
 int proxy_send_local_infile_result ;
 int proxy_send_query_result ;

int network_mysqld_proxy_connection_init(network_mysqld_con *con) {
 con->plugins.con_init = proxy_init;
 con->plugins.con_connect_server = proxy_connect_server;
 con->plugins.con_read_handshake = proxy_read_handshake;
 con->plugins.con_read_auth = proxy_read_auth;
 con->plugins.con_read_auth_result = proxy_read_auth_result;
 con->plugins.con_read_query = proxy_read_query;
 con->plugins.con_read_query_result = proxy_read_query_result;
 con->plugins.con_send_query_result = proxy_send_query_result;
 con->plugins.con_read_local_infile_data = proxy_read_local_infile_data;
 con->plugins.con_read_local_infile_result = proxy_read_local_infile_result;
 con->plugins.con_send_local_infile_result = proxy_send_local_infile_result;
 con->plugins.con_cleanup = proxy_disconnect_client;

 return 0;
}
