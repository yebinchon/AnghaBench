
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {scalar_t__ server; } ;


 int tlsv1_server_set_verify (scalar_t__,int) ;

int tls_connection_set_verify(void *tls_ctx, struct tls_connection *conn,
         int verify_peer)
{




 return -1;
}
