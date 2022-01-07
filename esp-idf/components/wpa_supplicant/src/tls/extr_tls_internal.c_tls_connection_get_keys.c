
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_keys {int dummy; } ;
struct tls_connection {scalar_t__ server; scalar_t__ client; } ;


 int tlsv1_client_get_keys (scalar_t__,struct tls_keys*) ;
 int tlsv1_server_get_keys (scalar_t__,struct tls_keys*) ;

int tls_connection_get_keys(void *tls_ctx, struct tls_connection *conn,
       struct tls_keys *keys)
{
 return -1;
}
