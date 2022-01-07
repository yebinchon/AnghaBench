
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_server {int dummy; } ;


 int os_free (struct tlsv1_server*) ;
 int tlsv1_server_clear_data (struct tlsv1_server*) ;

void tlsv1_server_deinit(struct tlsv1_server *conn)
{
 tlsv1_server_clear_data(conn);
 os_free(conn);
}
