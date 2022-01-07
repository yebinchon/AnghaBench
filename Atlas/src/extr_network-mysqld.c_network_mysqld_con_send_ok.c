
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_socket ;


 int SERVER_STATUS_AUTOCOMMIT ;
 int network_mysqld_con_send_ok_full (int *,int ,int ,int ,int ) ;

int network_mysqld_con_send_ok(network_socket *con) {
 return network_mysqld_con_send_ok_full(con, 0, 0, SERVER_STATUS_AUTOCOMMIT, 0);
}
