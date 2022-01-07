
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {scalar_t__ server; scalar_t__ client; } ;


 int tlsv1_client_set_cipher_list (scalar_t__,int *) ;
 int tlsv1_server_set_cipher_list (scalar_t__,int *) ;

int tls_connection_set_cipher_list(void *tls_ctx, struct tls_connection *conn,
       u8 *ciphers)
{
 return -1;
}
