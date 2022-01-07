
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {scalar_t__ server; scalar_t__ client; } ;


 int os_free (struct tls_connection*) ;
 int tlsv1_client_deinit (scalar_t__) ;
 int tlsv1_server_deinit (scalar_t__) ;

void tls_connection_deinit(void *tls_ctx, struct tls_connection *conn)
{
 if (conn == ((void*)0))
  return;
 os_free(conn);
}
