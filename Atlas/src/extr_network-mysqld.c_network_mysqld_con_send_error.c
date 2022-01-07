
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_socket ;
typedef int gsize ;


 int ER_UNKNOWN_ERROR ;
 int network_mysqld_con_send_error_full (int *,char const*,int ,int ,int *) ;

int network_mysqld_con_send_error(network_socket *con, const char *errmsg, gsize errmsg_len) {
 return network_mysqld_con_send_error_full(con, errmsg, errmsg_len, ER_UNKNOWN_ERROR, ((void*)0));
}
