
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int network_socket_retval_t ;
struct TYPE_5__ {scalar_t__ socket_type; } ;
typedef TYPE_1__ network_socket ;


 scalar_t__ SOCK_STREAM ;
 int network_socket_write_send (TYPE_1__*,int) ;
 int network_socket_write_writev (TYPE_1__*,int) ;

network_socket_retval_t network_socket_write(network_socket *con, int send_chunks) {
 if (con->socket_type == SOCK_STREAM) {



  return network_socket_write_send(con, send_chunks);

 } else {
  return network_socket_write_send(con, send_chunks);
 }
}
