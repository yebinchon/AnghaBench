
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_socket ;
typedef int guint ;
typedef int gsize ;
typedef int gchar ;


 int TRUE ;
 int network_mysqld_con_send_error_full_all (int *,char const*,int ,int ,int const*,int ) ;

int network_mysqld_con_send_error_full(network_socket *con, const char *errmsg, gsize errmsg_len, guint errorcode, const gchar *sqlstate) {
 return network_mysqld_con_send_error_full_all(con, errmsg, errmsg_len, errorcode, sqlstate, TRUE);
}
