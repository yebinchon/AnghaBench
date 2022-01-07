
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {scalar_t__ server; scalar_t__ client; } ;


 int tlsv1_client_get_keyblock_size (scalar_t__) ;
 int tlsv1_server_get_keyblock_size (scalar_t__) ;

int tls_connection_get_keyblock_size(void *tls_ctx,
         struct tls_connection *conn)
{
 return -1;
}
